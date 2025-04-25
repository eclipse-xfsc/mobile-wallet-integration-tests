As a PCM user
 I want to test PinCreate Screen

Feature: PinCreate Screen Test

Scenario: Test PinCreate
Given I am on the PCM pin create page with pin input
# src/screens/PinCreate/PinCreate.tsx -> passcodeCreate
when I enteres all required pin create fields
and I need to enter pin enter and pin reenter must be simillar 
then I am successfully create pin 
and I am use this pin on login time

Scenario: Test biometric finger 
Given I am open finger print scanner 
# src/screens/PinCreate/PinCreate.tsx -> createBiometricKeys
when I need to scan our finger on device scanner
then I am successfully register finger 
