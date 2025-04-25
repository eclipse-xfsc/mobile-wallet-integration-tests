@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006
@idm-pcm-e1-00007
@idm-pcm-e1-00015
@idm-pcm-e1-00011
@idm-pcm-e1-00010
@idm-pcm-e1-00070
@idm-pcm-e1-00024
@idm-pcm-e1-00008
@idm-pcm-e1-00011
Feature: User gets connection invitation
 # Need to research NFC and QR code testing

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager

    # Can these tests be parametrised like this

    @idm-pcm-e1-00008
    Scenario Outline: User can accept connection requests
        Given connection invite arrives on PCM app
        When User interacts with the <invitation> 
        # Should a 3rd option for "Block" connection exist
        Then a prompt to "Accept" or "Refuse" is shown
        When "Accept" is selected
        Then connection is established
            And connection is stored on PCM app

        Examples:
        | Invitation | 
        | QR_Code    |  
        | NFC        |
        | URL        |


    # Can these tests be parametrised like this
    Scenario Outline: User can refuse connection requests
        Given connection invite arrives on PCM app
        When User interacts with the <invitation> 
        # Should a 3rd option for "Block" connection exist
        Then a prompt to "Accept" or "Refuse" is shown
        When "Refuse" is selected
        Then connection is denied
        # Is the denied connection permanent (on a blacklist)?

        Examples:
        | Invitation | 
        | QR_Code    |  
        | NFC        |
        | URL        |

        
 