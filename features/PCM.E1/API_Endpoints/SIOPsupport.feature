Feature: SIOP Login support

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager
    ## SIOP = Self-Issued OpenID

    # Someone please verify I understood the SIOP request correctly. 
    Background: User is logged in
        Given User is logged in the PCM app
        And user receives an SIOP invitation


    Scenario: User can accept SIOP request
        When user accepts invitation
        Then user is connected to the OCM


    Scenario: User can reject SIOP request
        When user rejects invitation
        Then no connection is made

    Scenario: User can login via SIOP call
        When user makes a login SIOP call
        Then they receive authentication