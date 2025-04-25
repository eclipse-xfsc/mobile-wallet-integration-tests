As a PCM user
 I want to show Contact Details Screen

Feature: Contact Details Screen Test

Scenario: Test Contact Details Screen

Given : Connection Id should be passed as parameter to the Screen
# src/screens/ContactDetails/ContactDetails.tsx -> ContactDetails
When : Connection is retrived from Connection ID 
Then : Show Connection details on the screen

When : Delete Connection is pressed 
# src/screens/ContactDetails/ContactDetails.tsx -> showDeleteConnectionAlert
Then : Show Alert dialogue on the screen for confirmation

When : Delete is confirmed
# src/screens/ContactDetails/ContactDetails.tsx -> deleteConnection
And : Connection mediator is checked 
Then : Connection gets deleted


