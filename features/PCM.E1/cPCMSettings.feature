@idm-pcm-e1-00003
@idm-pcm-e1-00006
Feature: PCM can configure settings for cPCM, cPCM plugins and cPCM sync

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager

    Background: User is logged in and on the wallet backup screen 
        Given User is logged in

    Scenario Outline: User can configure wallet sync with cPCM within PCM app
        #For periodic syncing
        Given cPCM configuration settings is presented
        When the user changes sync period schedule to <sync_period>
        Then PCM is scheduled for sync set to <sync_period>
            And <sync_event> happens 
             
        Examples:
        | sync_period | sync_event  |
        | daily       | daily_sync  |
        | weekly      | weekly_sync |
        | never       | no_sync     |
        # daily can be 0.24 seconds as opposed to 24 hours, with 3 or 4 syncs checked
        # weekly can be 1.68 seconds as opposed to 168 hours, with 3 to 4 syncs checked
        # never checked over a 10 seconds to check no syncing event occurs

    Scenario: User triggers sync event from PCM with cPCM
        Given option to trigger sync event is presented
        When the user chooses to sync
        Then the PCM syncs with the cPCM


    #This can be broken out into individual scenarios if the steps are laregly different
    Scenario Outline: User can toggle cPCM settings
        Given cPCM configuration settings is presented
        When user toggles the <cPCM_Function> on
        Then the <cPCM_Function> is active in the background
        When user toggles the <cPCM_Function> off
        Then the <cPCM_Function> won't run in the background

        Examples:
        | cPCM_Function          |
        | Consent_Management     |
        | Connection_Acceptance  |
        | Presentation_Allowance |
        | Issueing_Management    |
        | Credential_Management  |

    Scenario: User can enable cPCM plugins
        Given cPCM plugin marketplace is presented
        # should the user see popular 3rd party plugins? 
        When the user searches for a 3rd party plugin
        Then relevant search results for 3rd party plugins appears
        When the user selects a plugin to install
        Then the plugin shall be available offline on the PCM app
            And the plugin is enabled by default 
        
    Scenario: User can disable and remove cPCM plugins
        Given cPCM plugin configuration settings is presented
            And a plugin is enabled
        When user selects an enabled plugin
            And disables the plugin
        Then the plugin does not perform actions in the background
        When the user removes the plugin
        Then the plugin is unavailable to enable