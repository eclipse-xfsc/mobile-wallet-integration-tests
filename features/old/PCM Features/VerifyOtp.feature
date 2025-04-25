As a PCM user
 I want to test VerifyOtp Screen

Feature: VerifyOtp Screen Test

Scenario: Test VerifyOtp Screen
Given I am is on the PCM VerifyOtp page
# src/screens/VerifyOtp/VerifyOtp.tsx -> VerifyOtp
when I entered all required VerifyOtp fields
then I am  successfully register on PCM
and I moved to pin creation page