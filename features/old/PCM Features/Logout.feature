As a PCM user
 I want to logout from app

Feature: Logout from app

Scenario: Test Logout
Given I am on setting page
# src/screens/Settings.tsx -> logoff
when I am press logout on setting page
and I am successfully logout from PCM
