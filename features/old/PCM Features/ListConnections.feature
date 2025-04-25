As a PCM user
 I want to show ListConnections Screen

Feature: ListConnections Screen Test

Scenario: Test ListConnections Screen

When : Connection Records are not empty
# src/screens/ListContacts/ListContacts.tsx -> ListEmptyComponent
Then : List of connections is displayed on the Screen

When : Connection Records are empty
# src/screens/ListContacts/ListContacts.tsx -> ListContacts
Then : No Connections available message is displayed on the Screen