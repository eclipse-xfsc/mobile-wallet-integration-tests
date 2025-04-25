@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006
@idm-pcm-e1-00008
Feature: User manages Verifiable Credentials
    # Scenarios: Receives (accept, refuse), removes, presents, sees, view history

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager

    Background: User is logged in
        Given User is logged in the PCM app
        And the VC screen is presented


    Scenario: User accepts W3C VC
        Given user gets notification on VC issueing request
            And VC is an W3C VC
        When request is accepted 
        Then VC is available in PCM app
            And VC is synced to cPCM
            And VC is stored on OCM 
            # not sure how we can verify OCM storage

    Scenario: User accepts Indy VC
        Given user gets notification on VC issueing request
            And VC is an Indy VC
        When request is accepted 
        Then VC is available in PCM app
            And VC is synced to cPCM
            And Remote Connection can be seen
        


    Scenario: User refuse W3C VC
        Given user gets notification on VC issueing request
            And VC is an W3C VC
        When request is refused
        Then VC is not available in PCM app


    Scenario: User refuse Indy VC
        Given user gets notification on VC issueing request
            And VC is an Indy VC
        When request is refused
        Then VC is not available in PCM app


    Scenario: User removes Indy VC
        Given an Indy VC is available on the PCM app
        When user removes Indy VC
        Then Indy VC removed from PCM
            And Indy VC removed from cPCM
            And Indy VC removed from OCM


    Scenario: User can see VC on local PCM app (offline)
        Given the user fails to connect online
        Then the PCM VCs can still be seen on the PCM app


    Scenario: User can see VC on cPCM 
        Given the user logs into their cPCM account
        When the user navigates to the VC screen
        Then the available VCs are presented

