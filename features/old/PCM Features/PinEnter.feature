As a PCM user
 I want to test PinEnter Screen

Feature: PinEnter Screen Test

Scenario: Test Login with PIN
Given I am login in PCM with pin enter page with pin input
# src/screens/PinEnter/PinEnter.tsx -> checkPin
when I am entered correct pin enter fields
and I am successfully login in PCM

Scenario: Test Login with Biometric
Given I am open finger print scanner
# src/screens/PinEnter/PinEnter.tsx -> checkBiometric
when I am entered correct finger print id
then I am successfully login in PCM 
