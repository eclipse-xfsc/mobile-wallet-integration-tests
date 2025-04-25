@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006 
Feature: User can login with chosen method of authentication
# Features: login, change pin, login with biometircs, opt out of personal sharing, etc
# Notice: Sign up and Account creation are excluded

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager
    Background: User has account, account creation not done by user
        Given user has an account

    @idm-pcm-e1-00010
    @idm-pcm-e1-00021
    Scenario Outline: User can login
        # valid for both offline and online
        Given user is logged out    
        When User attempts login using <login_methods>
        Then the PCM app is logged in

        Examples:
        | login_methods | network_status |
        | PIN           | online         |
        | PIN           | offline        |
        | Biometric     | online         |
        | Biometric     | offline        |
        # Assuming mobile devices sort out whether to do facial scanning or fingerprint scanning. 
        # From the BDD perspective, this is abstracted to Biometric Auth = Success (we aren't testing hardware functionality).

    Scenario: User can logout
        Given user is logged in the PCM phone app
            And the logout option is presented
        When the user attempts to logout
        Then the PCM app is logged out


    Scenario Outline: User can't login with invalid login methods
        Given user is logged out    
        When User attempts login using <login_methods>
        Then the PCM app displays an error message
            And the PCM app remains logged out
        
        Examples:
        | login_methods     |
        | invalid_PIN       |
        | invalid_Biometric |
        # Assuming mobile devices sort out whether to do facial scanning or fingerprint
        # From the BDD perspective, this is abstracted to Biometric Auth = Failure

    Scenario Outline: User can opt out of sharing personal data
        Given user is logged in the PCM phone app
            And options to opt out of personal sharing is presented
        When the user toggles to opt out of sharing personal data on <platform> 
        Then user personal data is removed from <platform>

        Examples:
        | platform |
        | PCM      |
        | cPCM     |

    Scenario: User can change login PIN
        Given user is logged in the PCM phone app
