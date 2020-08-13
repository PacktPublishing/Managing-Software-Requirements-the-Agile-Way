Feature: Login demo

  Scenario: Successful log-in
    Given Traveller is at the log-in page
    When Traveller enters the correct username
    And Traveller enters the correct password
    And Traveller submits credentials
    Then Traveller is taken to their bookings page
    And Traveller sees their booking
