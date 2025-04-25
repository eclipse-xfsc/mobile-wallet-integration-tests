As a PCM user
 I want to test Registration Screen

Feature: Registration Screen Test

Scenario: Test Registration Screen
Given I am on the PCM Registration page with email input
# src/screens/Registration/Registration.tsx -> Registration
when I entered all required registration fields
then I moved to verify screen
and I get otp with registration email

