As a PCM user
 I want to show Credential Details Screen

Feature: Credential Details Screen Test

Scenario: Test Credential Details Screen

Given : Credential Id should be passed as parameter to the Screen
# src/screens/CredentialDetails/CredentialDetails.tsx -> CredentialDetails
When : Credential is retrived from Credential
Then : Connection details are displayed on the screen

