As a PCM user
 I want to test Proof request Screen

Feature: Proof request Screen Test

Scenario: Test proof request accept screen
  Given proof request screen have two option accept and reject
  # src/screens/ProofRequest/ProofRequest.tsx -> handleAcceptPress
  When proof is accept show the proof success modal
  Then the app move to credential Screen

Scenario: Test proof request reject screen
  Given proof request screen have two option accept and reject
  # src/screens/ProofRequest/ProofRequest.tsx -> handleDeclinePress
  When proof is reject show the proof declined modal
  Then the app move to credential Screen
