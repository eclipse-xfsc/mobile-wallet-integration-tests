@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006 
@idm-pcm-e1.00008
@idm-pcm-e1-00071
Feature: User can set up NFC tags
     
    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager
    ## NFC = Near Field Communication

    Background: User is logged in
        Given User is logged in the PCM app

    Scenario Outline: User can set up an NFC tag for W3C VP
        Given a VC is presented
            And User is on an <device_OS> device
        When the user adds the VC to <wallet_type>
        Then the VC is available as a VP on <wallet_type>

        Examples:
        | device_OS | wallet_type   |
        | iOS       | apple_wallet  |
        | iOS       | google_wallet |
        | Android   | google_wallet |
      # | Garmin    | garmin_pay    |

    @idm-pcm-e1-00024
    Scenario Outline: User can set up an NFC tag for a Connection Invite
        Given Connection Invite configuration settings is presented
            And User is on an <device_OS> device
        When the user adds the connection invite to <wallet_type>
        Then the connection invite is available on <wallet_type>

        Examples:
        | device_OS | wallet_type   |
        | iOS       | apple_wallet  |
        | Android   | google_wallet |

