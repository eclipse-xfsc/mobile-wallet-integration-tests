As a PCM user
 I want to Export Wallet Screen

Feature: Export Wallet Screen Test

Scenario: Test Export Wallet Screen
Given I am on the PCM Export Wallet screen
# src/screens/ExportWallet/ExportWallet.tsx -> ExportWallet
when I entered the mnemonic used while creating wallet 
then I am successfully exports wallet from PCM to his local storage
and I am move to settings screen

