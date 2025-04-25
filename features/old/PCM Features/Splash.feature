As a PCM user
 I want to test Splash Screen 

Feature: Splash Screen Test

Scenario: Test Splash Screen
  Given a standard installation of the application
  # src/screens/Splash/Splash.tsx  -> Splash
  When I open the app
  Then the app splash screen should be displayed
