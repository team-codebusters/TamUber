Feature: checklist

  Scenario: check everything in checklist
    Given a user visits the checklist page
    When they check everything of the checklist
    Then I should not see Tire Pressure
    Then they cleck continue
    Then I follow "Continue"
    Then I should be on profile page
