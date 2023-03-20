@CBA_Testcases
Feature: CBA application test


  @CBA1
  Scenario:119_Verify the presence of the 'Continue' button
    Given user is on the application
    Then  user is able to see "Continue" button

  @CBA
  Scenario:Verify the presence of the 'Cancel' button
    Given user is on the application
    Then  user is able to see "Cancel" button


  @CBA
  Scenario:Verify the 'Continue' button is disabled until a service has been chosen
    Given user is on the application
    Then  verify "Continue" button is disabled
    When user selects "Other" in "something's wrong"
    Then verify textbox is enabled and message is being displayed

  @CBA
  Scenario:Verify the 'Continue' and Cancel' buttons go into the focused state when the user hovers over them
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then hover on "Cancel" button
    Then hover on "Continue" button

  @CBA
  Scenario:Verify after selecting services, tapping the 'Continue' button takes the user to the Drop Off/SAW screen
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    Then user is navigated to "drop off" screen

  @CBA
  Scenario:Verify the list of services is displayed in alphabetical order
    Given user is on the application
    Then verify the list of services is displayed in alphabetical order

  @CBA
  Scenario:Verify when the user has clicked an icon square, the active state is activated
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then verify "Oil Change" in "services" is "activated"

  @CBA
  Scenario:Verify when user select more than one service icon and unselect any service, then box should not be highlighted
    Given user is on the application
    When user selects "Oil Change" in "services"
    When user selects "State Inspection" in "services"
    When user unselects "Oil Change" in "services"
    Then verify "Oil Change" in "services" is "not highlighted"

  @CBA
  Scenario:Verify if the user has selected the "Other" service, the text area should become required
    Given user is on the application
    When user selects "Other" in "something's wrong"
    Then verify textbox is mandatory

  @CBA
  Scenario:Verify, when open "i" icon, the x icon is located in the upper right corner of the modal
    Given user is on the application
    When user clicks on the i icon
    Then verify close button is available on the "informational" modal pop up

  @CBA
  Scenario:Verify the first breadcrumb is highlighted
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    Then verify the first breadcrumb is highlighted

  @CBA
  Scenario:Verify if one service has been selected, the subject line reads "I would like to visit the [location] store for [service]"
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change" is displayed


  @CBA
  Scenario:Verify if two services have been selected, the subject line reads "I would like to visit the [location] store for [service1] and [service2]"
    Given user is on the application
    When user selects "Oil Change" in "services"
    When user selects "Pre-Purchase Inspection" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change and Pre-Purchase Inspection" is displayed

  @CBA
  Scenario:Verify if three or more services have been selected, the subject line reads "I would like to visit the [location] store for multiple services"
    Given user is on the application
    When user selects "Oil Change" in "services"
    When user selects "Pre-Purchase Inspection" in "services"
    When user selects "Fluid Service" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "multiple services" is displayed


  @CBA
  Scenario:Verify if the user chooses services with SAW availability, the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."

  @CBA
  Scenario:Verify if the user chooses services with no SAW availability, the subheading reads "Based on the services you selected, we'll need you to drop off your vehicle."
    Given user is on the application
    When user selects "Fluid Service" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then the subheading reads "Based on the services you selected, we’ll need you to drop off your vehicle."

  @CBA
  Scenario:Verify if the user selects "Stay and Wait", the shuttle service option is disabled
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And shuttle service option is disabled

  @CBA
  Scenario:Verify if the user clicks the "Previous" button, they are taken to the Services screen
    Given user is on the application
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then click on "Previous" button
    Then user is navigated to "services" screen

  @CBA
  Scenario:Verify if the user clicks the "Previous" button, they are taken to the Services screen
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    Then click on "Previous" button
    When user is navigated to "services" screen
    Then verify "Oil Change" in "services" is "highlighted"

  @CBA
  Scenario:Verify clicking the "Continue" button brings the user to the date/time screen
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen

  @CBA
  Scenario:Verify the screen reads "What day and time work best for you?" followed by "Our current availability is listed below. Please select what is most convenient for you."
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen
    Then verify "What day and time work best for you?" is displayed
    Then verify "Our current availability is listed below. Please select what is most convenient for you." is displayed

  @CBA
  Scenario:Verify the "Continue" button is disabled until the user selects a time slot.
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen
    Then  verify "Continue" button is disabled

  @CBA
  Scenario:Verify the number of time slots available matches the number listed
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    Then verify the number of time slots available matches the number listed


  @CBA
  Scenario:Verify if the user has selected the stay and wait option, the "After Hours" time slot option is not available
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    And user is navigated to "date-time" screen
    Then verify After Hours time slot is "not available"


  @CBA
  Scenario:Verify tapping on "Calendar view" should take the user to calendar view
    Given user is on the application
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on calender view

