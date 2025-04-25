As a PCM user
 I want to test Scan Screen

Feature: Scan Screen Test

Scenario: Test Scan Screen
Given I am on the Scan Screen 
# src/screens/Scan/Scan.tsx -> Scan
when I am scans the QR code for connection
then I am successfully made connection on PCM
and I am move to List Connections Screen

