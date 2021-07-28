Feature: Loan Calculator

  Scenario:Calculate the monthly loan amount
    Given I am on loan calculator home page
    When I enter loan '10000' amount
    And  I enter loan team '10' and month '2'
    And I enter interest '6' rate
    And I select the compound 'Monthly (APR)' and pay back 'Every Month'
    And  Click on calculate button
    Then I see the result 'result'



















