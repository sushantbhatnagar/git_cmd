Feature: code-breaker submits guess

  As a code-breaker
  I want to submit a guess
  So that I can try to break the code

  The code-breaker submits a guess of four numbers. The game marks the guess
  with + and - signs.For each number in the guess that matches the number and position of a number in the secret code, the mark includes one +. For each number in the guess that matches the number but not the  position of a number in the secret code, a - is added to the mark.

  @sb
  Scenario Outline: submit guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"
  @no_matches
    Scenarios: no matches
      | code | guess | mark |
      | 1234 | 5555  | ''   |
  @1_number_correct
    Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |
  @2_numbers_correct
    Scenarios: 2 numbers correct
      | code | guess | mark |
      | 1234 | 5254  | ++   |
      | 1234 | 5154  | +-   |
      | 1234 | 2545  | --   |
  @3_numbers_correct
    Scenarios: 3 numbers correct
      | code | guess | mark |
      | 1234 | 5234  | +++  |
      | 1234 | 5134  | ++-  |
      | 1234 | 5124  | +--  |
      | 1234 | 5123  | ---  |
  @4_numbers_correct
    Scenarios: all numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 1243  | ++-- |
      | 1234 | 1423  | +--- |
      | 1234 | 4321  | ---- |
