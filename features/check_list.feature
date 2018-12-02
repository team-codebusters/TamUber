Feature: checklist

  Scenario: check everything in checklist
    Given a user visits the checklist page
    When they check everything of the checklist
    Then they cleck continue
    Then they should see their profile page

