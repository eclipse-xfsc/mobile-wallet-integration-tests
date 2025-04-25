@idm-pcm-e1-00000
@idm-pcm-e1-00003
@idm-pcm-e1-00006
Feature: Backup and restoration of the PCM Wallet

    ## PCM = Personal credential manager
    ## VC = verifiable credential
    ## VP = verifiable presentation
    ## cPCM = cloud personal credential manager

    Background: User is logged in and on the wallet backup screen 
        Given User is logged in
        And User is on PCM Wallet backup screen


    Scenario: User successfully restores backup
        When user attempts to backup from local file
        Then user can see all VPs, VCs and VP history log contained within file


    Scenario: User gets error message on invalid backup restore
        When user attempts to backup from invalid local file
        Then an error message occurs
        # Error message to be descriptive in where the problem is, i.e. Incorrect user, wrong file type, etc.
        # This Scenario can be paramtrised for different problem reporting types

    Scenario: User can export backup file
        When user attempts to create a backup locally
        Then user is prompted on where to save local backup file
        When user selects save location
        Then backup file is generated at that location