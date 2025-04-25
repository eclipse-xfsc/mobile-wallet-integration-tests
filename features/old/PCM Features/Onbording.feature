As a PCM user
 I want to test Onbording Screen

Feature: Onbording Screen Test

Scenario: Test Onbording Screen
  Given introduction to the app 
  # src/screens/Onboarding/Onboarding.tsx -> Onboarding
  When I am start app first time
  Then the app Onbording Screen should be displayed
