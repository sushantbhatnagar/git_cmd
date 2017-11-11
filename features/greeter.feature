Feature: Say Hello to RSpec

  In order to start learning RSpec with Cucumber
  As a reader of the RSpec Book
  I want to a greeter to say Hello

  @say_hello_rspec
  Scenario: Say Hello to RSpec via Greeter Method
    Given a greeter
    When I send it the greet message
    Then I should get Hello Cucumber!
