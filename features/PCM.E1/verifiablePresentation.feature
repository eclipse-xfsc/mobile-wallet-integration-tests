@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006
@idm-pcm-e1-00011
Feature: User presents Verifiable Presentations

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager

    Background: User is logged in
        Given User is logged in the PCM app
       # And User receives a VP request
    
    Scenario: User accepts VP request, and VP passes
        Given VP is valid
        When user accepts request
        Then VP is verified by verifier
            And user receives success message
            And VP event saved in VP history log

    Scenario: User accepts VP request, and VP fails
        Given VP is invalid
        When user accepts request
        Then VP is verified by verifier
            And user receives failure message
            And VP event saved in VP history log

    Scenario: User presents VP (offline), and verifier confirms success
        Given scannable VP is presented
        When VP is scanned by verifier
        Then VP is proved to verifier
            # And VP event saved in VP history log

    Scenario: User presents VP (offline), and verifier confirms failure
        Given scannable VP is presented
            And VP is invalid
        When VP is scanned by verifier
        Then VP is not accepted by verifier
            # And VP event saved in VP history log

        # Should there be a problem report (i.e. User age too young, expired credential, etc?)

    Scenario: User can see history of VPs
        When user navigates to the VP history log
        Then the full log of VP with datestamps is presented



    # Scenario: User presents VP and is shown VP failure (offline)


    