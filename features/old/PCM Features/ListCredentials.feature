As a PCM user
 I want to show ListCredentials Screen

Feature: ListCredentials Screen Test

Scenario: Test ListCredentials Screen

When : Credential Records are not empty
# src/screens/ListCredentials/ListCredentials.tsx -> emptyListComponent
Then : List of Credentials is displayed on the Screen with Schema Name

When : Credential Records are empty
# src/screens/ListCredentials/ListCredentials.tsx -> ListCredentials
Then : No Credentials available message is displayed