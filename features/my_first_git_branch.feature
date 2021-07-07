Feature: How does Git basic commands work

  Scenario: Create a first branch and then see how do we push the changes to the master
    Given I create a new branch with the command "git branch <my_first_branch> (ph)
    And I move to the branch using "git checkout <your branch name> (ph)
    Then I should be able to move to the newly created branch and work there. (ph)