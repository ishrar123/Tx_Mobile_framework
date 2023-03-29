@CBA_testcases
Feature: CBA Application

  Background:
    Given user is on the application

  @CBA_02 @CBA
  Scenario:144_Verify that "i" icon displays with "something's wrong" category information.
    When user clicks on the "2" i  button
    Then user is able to see an informative page with description of all the car services

  @CBA_03 @CBA
  Scenario: 145_Verify functionality of toggle arrow button in Common Services
    When user clicks on the "1" toggle button
    Then user is not able to see the services in common services
    When user clicks on the "1" toggle button
    Then user is able to see the services in the common servicess

  @CBA_04 @CBA
  Scenario:146_Verify that  user select one or multiple "Common services" options at a time.
    When user selects "Oil Change" in "services"
    When user selects "Alignment" in "services"
    When user selects "Tire Rotation" in "services"

  @CBA_05 @CBA
  Scenario: 147_Verify functionality of toggle arrow button in 'Something's wrong'.
    When user clicks on the "2" toggle button
    Then user is not able to see the services in something wrong
    When user clicks on the "2" toggle button
    Then user is able to see the services in the something_s wrongs

  @CBA_100 @CBA
  Scenario:148_Verify tapping the "Previous" button takes the user to the Drop Off/SAW screen with the selected option displayed
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "5:30 PM" time slot
    And click on "Previous" button
    Then user is navigated to "dropoff" screen
    Then verify "drop off" option is selected

  @CBA_102 @CBA
  Scenario: 149_Verify the user's time slot selection is present after navigating to the drop off/SAW screen and back
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the "12:00 PM" timeslot
    And click on the "Previous" button
    And user click on "Continue" button
    And wait for some time to load the page
    Then user is able to see the selected "12:00 PM"

  @CBA_103 @CBA
  Scenario: 150_verify the user can click the "Continue" button after selecting a time slot
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the "12:00 PM" timeslot
#    And click on "9:00 AM" time slot
    And user click on "Continue" button

  @CBA_104 @CBA
  Scenario: 151_Verify the "[MONTH] [YEAR]" of the displayed week is present
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user click on the "Calender View" button
    Then user is able to see the monthyear

  @CBA_105 @CBA
  Scenario: 152_Verify the "Calendar View" option is displayed above and to the right of the appointments section
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    Then user is able to see the Calender View button


  @CBA_106 @CBA
  Scenario: 153_Verify that the  current week is displayed and shows 7 days starting from the current date
    When  user selects "Oil Change" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    Then user is able to see the next 7 dates

  @CBA_107 @CBA
  Scenario: 154_Verify that the current day should automatically display as expanded
    When  user selects "Oil Change" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    Then toggle icon is already selected

  @CBA_111 @CBA
  Scenario: 155_Verify the user can tap  "Next 7 days", beEasy and to the right of the appointments section, to view the time slots for the following week
    When  user selects "Oil Change" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    When click on "Next 7 days" button
    And wait for some time to load the page
    Then user is able to see the next 7 dates

  @CBA_112 @CBA
  Scenario: 156_Verify tapping "Prev 7 days", beEasy and to the left of the appointment section, should take the user to the previous week
    When  user selects "Oil Change" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    When click on "Next 7 days" button
    And wait for some time to load the page
    Then user is able to see the next 7 dates
    When click on "Prev 7 days" button
    And wait for some time to load the page
    Then user is able to see the next 7 dates

  @CBA_113 @CBA
  Scenario:157_Verify tapping on "Calendar view" should take the user to calendar view
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on calender view

  @CBA_115 @CBA
  Scenario: 159_Verify the user can select a day on the calendar and it will return available times for that date

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    And user is able to see the selected date and verifying the page

  @CBA_116 @CBA
  Scenario: 160_Verify if the user has selected a time slot in the week view then tap "Calendar view", the date and time selected in week view are highlighted and displayed in the calendar view

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button

  @CBA_117 @CBA
  Scenario:161_Verify tapping "Week view" takes the user back to the current weeks view

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then user is able to see the monthyear
    And user navigates on the "Week view" button
    Then user is able to see the current week and shows starting days of week

  @CBA_118 @CBA
  Scenario:162_Verify the user can tap "Next day" to view the time slots for the following day

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then user is able to see the monthyear
    And user navigates on the "Next day" button and validates next day page

  @CBA_119 @CBA
  Scenario:163_Verify tapping on "Prev day" will take the user to the previous day

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then user is able to see the monthyear
    And user able to select nextday date in calender and validating
    And user navigates on the "Previous day" button and validates previous day page

  @CBA_120 @CBA
  Scenario:164_Verify the user is unable to click on any days that have passed

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then user is able to see the monthyear
    And user unable to select day that have passed

  @CBA_123 @CBA
  Scenario:165_Verify the stepper has 2 check marks icons and the vehicle icon highlighted followed by the person and  vehicle with a checkmark icons

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    Then user is able to see the vehicle info page


  @CBA_126 @CBA
  Scenario:166_Verify the presence of the "Previous" button

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    Then user is able to see the previous button

  @CBA_127 @CBA
  Scenario:167_Verify the presence of the "Continue" button

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    Then user is able to see the continue button

  @CBA_128 @CBA
  Scenario:168_Verify that the "Continue" button is disabled until year, make, and model are selected

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    Then user is able to see the continue button is in disable state un till select year

  @CBA_130 @CBA
  Scenario:169_Verify user can tap on the "Year" field to choose any year from the dropdown

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page

  @CBA_132  @CBA
  Scenario:170_Verify user can tap on the "Make" field to choose any make from the dropdown once the year has been selected

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select date and time and click on "Continue" button
    Then user is able to see the vehicle info page
    And Make model colour buttons are not enabled
    When user clicks on the year button
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    When user selects the "Acura" make and validating page

  @CBA_148 @CBA
  Scenario: 171_Verify the "First name" field is present and required
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "1:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    And "firstName" is present
    And user click on "Continue" button
    Then user is able to see error message "Please enter your first name"


  @CBA_149 @CBA
  Scenario: 172_Verify the "Last name" field is present and required
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "1:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    And "lastName" is present
    And user click on "Continue" button
    Then user is able to see error message "Please enter your last name"

  @CBA_150 @CBA
  Scenario: 173_Verify the "Email" field is present and required
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "1:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    And "email" is present
    And user click on "Continue" button
    Then user is able to see error message "Please enter a valid email address"

  @CBA_151 @CBA
  Scenario: 174_Verify the "Phone number" field is present and required
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "1:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    And "phone" is present
    And user click on "Continue" button
    Then user is able to see error message "Please enter a 10 digit phone number"

#  @CBA_152
#  Scenario: CBA_152_Verify the "Zip code" field is present and required
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And "zip" is present
#    And user click on "Continue" button
#    Then user is able to see error message "Please enter a valid zip code"
#
#  @CBA_153
#  Scenario: CBA_153_Verify the "Last name" field is present and required
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And "altPhone" is present
#    And user click on "Continue" button
#    Then user is not  able to see error message
#
#  @CBA_154
#  Scenario: CBA_154_Verify the text "Is this your first time visiting our South Sarasota store?*" radio button is present and required
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And Location question is present
#    And user click on "Continue" button
#    Then user is able to see error message "Please choose Yes or No"
#
#  @CBA_155
#  Scenario: CBA_155_Verify the presence of the "Yes" and "No" radio buttons
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And radio buttons are present
#
#
#  @CBA_157
#  Scenario: CBA_157_Verify if the user attempts to press the "Continue" button without the required fields filled out, inline errors are shown
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And user click on "Continue" button
#    Then user is able to see the inline error messages
#
#  @CBA_163
#  Scenario: CBA_163_Verify if the user enters an invalid email address format the inline error is displayed
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And user enters an invalid "email" "ishrar134gmail.com"
#    Then user is able to see error message "Please enter a valid email address"
#
#  @CBA_166
#  Scenario: CBA_166_Verify if the user enters an invalid email address format the inline error is displayed
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And user enters an invalid "phone" "7879888"
#    Then user is able to see error message "Please enter a 10 digit phone number"
#
#  @CBA_17
#  Scenario: CBA_17_Verify the "I" option present along common services and the functionality
#    And "i" button should be present
#    When user clicks on the "i" button
#    Then user is able to see the list of all the services
#
#  @CBA_170
#  Scenario: CBA_170_Verify the "Alt. phone number" is capped at 10 digits
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    And user enters an invalid "altPhone" "123456789012"
#    Then getting the value of "altPhone"
##            Then user is able to see error message "Please enter a 10 digit phone number"
#
#  @CBA_176
#  Scenario: CBA_176_Verify tapping the "Previous" button will take the user to the Vehicle Info screen
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    Then click on "Previous" button
#    Then user is navigated to "vehicle-info" screen
#    Then user is able to see the "2021" year "Acura" make and "ILX" model
#
#  @CBA_177
#  Scenario: CBA_177_Verify tapping the "Continue" button on the vehicle info screen brings the user to the personal information screen with information preserved
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    Then click on "Previous" button
#    And user click on "Continue" button
#    Then user is navigated to "personal-info" screen
#
#  @CBA_179
#  Scenario: CBA_179_Verify tapping the "Continue" button on the vehicle info screen brings the user to the personal information screen with information preserved
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then verify that stepper icon is highlighted
#
#  @CBA_181
#  Scenario: Verify the user sees their selected service(s) in the first sectioned area
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then user sees their selected service in the first sectioned area
#
#  @CBA_182
#  Scenario: Verify the user sees their specified drop off/SAW method the selected services in the first sectioned area
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "1:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then user sees their Drop off or Sit and Wait service in the first sectioned area
#
#  @CBA_183
#  Scenario:Verify if the user has chosen an after hours time slot, the "i" icon is present to the right of the appointment type
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "After Hours" timeslot
#    And user is able to click on the done button
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then user is able to see the i button in the review page
#
#  @CBA_184
#  Scenario: Verify if the user clicks the "i" icon, the after hours modal appears
#    When  user selects "Alignment" in "services"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "After Hours" timeslot
#    And user is able to click on the done button
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then user click on the i button in the review screen
#    Then user is able to see the after model
#
#  @CBA_185
#  Scenario:Verify if the user has chosen an after hours time slot, the "i" icon is present to the right of the appointment type
#    When  user selects "Other" in "services"
#    And user add "my vehicle name is Appache"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "5:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    Then see their additional notes in the first sectioned area
#
#  @CBA_187
#  Scenario:Verify if the user has chosen an after hours time slot, the "i" icon is present to the right of the appointment type
#    When  user selects "Other" in "services"
#    And user add "my vehicle name is Appache"
#    And   user click on "Continue" button
#    Then "Drop and vehicle" button is already selected
#    And user click on "Continue" button
#    And wait for some time to load the page
#    And user select the the "5:00 PM" timeslot
#    And user click on "Continue" button
#    When user clicks on the year button
#    When user selects the "2021" year
#    When user clicks on the make button
#    When user selects the "Acura" make
#    When user clicks on the model button
#    When user selects the "ILX" model
#    And user click on "Continue" button
#    When user is on personal info page
#    When user enter "firstName" as "Rahul"
#    When user enter "lastName" as "Kumar"
#    When user enter "email" as "Rahul12@gmail.com"
#    When user enter "phone" as "1234567890"
#    When user enter "altPhone" as "0987654321"
#    When user enter "zip" as "112223"
#    When user clicked on the yes button
#    And user click on "Continue" button
#    And user click on "Edit" button
#    Then user is navigated to "https://cbascheduler-frontend-dev.azurewebsites.net/south-sarasota/" screen
#
#  @CBA_19
#  Scenario: CBA_19_Verify "Stay and Wait" functionality
#    When user selects "Oil Change" in "services"
#    When user selects "State Inspection" in "services"
#    When user selects "Tire Rotation" in "services"
#    And user click on "Continue" button
#    Then user should be able to see the stay and wait button
#
#  @CBA_20
#  Scenario: CBA_20_To verify what happens when we select one stay & wait and one Drop-off services
#    When user selects "Oil Change" in "services"
#    When user selects "Battery / Electrical" in "services"
#    And user click on "Continue" button
#    Then Drop Off Vehicle functionality should be enabled
#    Then stay and wait option should be disabled
#
#  @CBA_21
#  Scenario: CBA_21_Verify if the user hovers over "Stay and Wait" or "Drop Off Vehicle", the option should go into the hover state
#    When user Click services as Oil Change State Inspection and Tire Rotation
#    And user click on continue button
#    And wait for some time to load the page
#    And hover on "Stay and Wait" Option
#
#
#  @CBA_22
#  Scenario: CBA_22Verify when user clicks on the "I" button then whichever service has stay and wait availability, a chair icon is present to the left of "Stay & Wait Available
#    When user clicks on the "1" i  button
#    Then user should be able to see the stay and wait text along with the chair icon
#
#  @CBA_23
#  Scenario: CBA_23_Verify when a user hovers over an service square box, a hover state should be activated
#    When user hovers the "Oil Change" services
#    Then "Oil Change" services should be activated
#
#  @CBA_24
#  Scenario: CBA_24_Verify different services present in the "Something's Wrong" section
#    And all the services in the Something_s wrong is present
#    When user selects "Battery / Electrical" in "services"
#    Then "Battery / Electrical" services should be activated
#    When user selects "Brakes" in "services"
#    Then "Brakes" services should be activated
#
#
#
#
#  @CBA_25
#  Scenario:Verify the hover functionality of "Cancel" button
#    Given user is on the application
#    Then hover on "Cancel" button
#
#  @CBA_38
#  Scenario:Verify the 'Continue' button is disabled until a service has been chosen
#    Then  verify "Continue" button is disabled
#    When user selects "Other" in "something's wrong"
#    Then verify textbox is enabled and message is being displayed
#
#  @CBA_41
#  Scenario:Verify after selecting services, tapping the 'Continue' button takes the user to the Drop Off/SAW screen
#    When user selects "Oil Change" in "services"
#    Then click on "Continue" button
#    Then user is navigated to "drop off" screen
#
#  @CBA_46
#  Scenario:Verify when the user has clicked an icon square, the active state is activated
#    When user selects "Oil Change" in "services"
#    Then verify "Oil Change" in "services" is "activated"
#
#  @CBA_47
#  Scenario:Verify when user select more than one service icon and unselect any service, then box should not be highlighted
#    When user selects "Oil Change" in "services"
#    When user selects "State Inspection" in "services"
#    When user unselects "Oil Change" in "services"
#    Then verify "Oil Change" in "services" is "not highlighted"
#
#  @CBA_48
#  Scenario:Verify if the user has selected the "Other" service, the text area should become required
#    When user selects "Other" in "something's wrong"
#    Then verify textbox is mandatory
#
#  @CBA_54
#  Scenario:Verify, when open "i" icon, the x icon is located in the upper right corner of the modal
#    When user clicks on the "1" i  button
#    Then verify close button is available on the "informational" modal pop up
#
#  @CBA_55
#  Scenario:Verify the first breadcrumb is highlighted
#    When user selects "Oil Change" in "services"
#    Then click on "Continue" button
#    Then verify the first breadcrumb is highlighted
#
#  @CBA_56
#  Scenario:Verify if one service has been selected, the subject line reads "I would like to visit the [location] store for [service]"
#    When user selects "Oil Change" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change" is displayed
#
#
#  @CBA_57
#  Scenario:Verify if two services have been selected, the subject line reads "I would like to visit the [location] store for [service1] and [service2]"
#    When user selects "Oil Change" in "services"
#    When user selects "Pre-Purchase Inspection" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change and Pre-Purchase Inspection" is displayed
#
#  @CBA_58
#  Scenario:Verify if three or more services have been selected, the subject line reads "I would like to visit the [location] store for multiple services"
#    When user selects "Oil Change" in "services"
#    When user selects "Pre-Purchase Inspection" in "services"
#    When user selects "Fluid Service" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then verify subject line - I would like to visit the "South Sarasota" store for "multiple services" is displayed
#
#
#  @CBA_59
#  Scenario:Verify if the user chooses services with SAW availability, the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."
#    When user selects "Oil Change" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."
#
#  @CBA_60
#  Scenario:Verify if the user chooses services with no SAW availability, the subheading reads "Based on the services you selected, we'll need you to drop off your vehicle."
#    When user selects "Fluid Service" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then the subheading reads "Based on the services you selected, we’ll need you to drop off your vehicle."
#
#  @CBA_74
#  Scenario:Verify if the user selects "Stay and Wait", the shuttle service option is disabled
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And shuttle service option is disabled
#
#  @CBA_79
#  Scenario:Verify if the user clicks the "Previous" button, they are taken to the Services screen
#    When user selects "Oil Change" in "services"
#    Then click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then click on "Previous" button
#    Then user is navigated to "services" screen
#
#  @CBA_80
#  Scenario:Verify if the user clicks the "Previous" button, they are taken to the Services screen
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    Then click on "Previous" button
#    When user is navigated to "services" screen
#    Then verify "Oil Change" in "services" is "highlighted"
#
#  @CBA_82
#  Scenario:Verify clicking the "Continue" button brings the user to the date/time screen
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And click on "Continue" button
#    Then user is navigated to "date-time" screen
#
#  @CBA_83
#  Scenario: Verify the stepper has 1 checkmark and highlighted calendar icon followed by vehicle icon, person icon, and vehicle with a checkmark icon
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And click on "Continue" button
#    Then user is navigated to "date-time" screen
#    Then verify that stepper icon is highlighted
#
#  @CBA_84
#  Scenario:Verify the screen reads "What day and time work best for you?" followed by "Our current availability is listed below. Please select what is most convenient for you."
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And click on "Continue" button
#    Then user is navigated to "date-time" screen
#    Then verify "What day and time work best for you?" is displayed
#    Then verify "Our current availability is listed below. Please select what is most convenient for you." is displayed
#
#  @CBA_87
#  Scenario:Verify the "Continue" button is disabled until the user selects a time slot.
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And click on "Continue" button
#    Then user is navigated to "date-time" screen
#    Then  verify "Continue" button is disabled
#
#  @CBA_89
#  Scenario:Verify the number of time slots available matches the number listed
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    Then verify the number of time slots available matches the number listed
#
#
#  @CBA_92
#  Scenario:Verify if the user has selected the stay and wait option, the "After Hours" time slot option is not available
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And select stay and wait option
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    Then verify After Hours time slot is "not available"
#
#  @CBA_94
#  Scenario:Verify if "After Hours" drop off is chosen, a modal appears
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#
#
#  @CBA_95
#  Scenario:Verify the text for the after hours modal
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#    Then verify "You’ve selected After Hours Drop Off." is displayed
#    Then verify "What's next?" is displayed
#    Then verify "Remove any valuables" is displayed
#    Then verify "Lock your vehicle" is displayed
#    Then verify "Place only your vehicle key through slot in the door or as instructed (see signage near front door)" is displayed
#    Then verify "We will contact you prior to performing any work. Thank you!" is displayed
#
#  @CBA_96
#  Scenario:Verify the after hours modal contains a "Done" button
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#    Then user is able to see "Done" button
#
#  @CBA_97
#  Scenario:Verify, when clicked, the after hours "Done" button closes the modal and returns the user to the time/date screen
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#    Then click on "Done" button
#    Then user is navigated to "date-time" screen
#
#  @CBA_98
#  Scenario:Verify the presence of the X icon in the after hours modal
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#    Then verify close button is available on the "After Hours" modal pop up
#
#  @CBA_99
#  Scenario:Verify clicking the X icon in the after hours modal closes the modal and returns the user to the time/date screen
#    Given user is on the application
#    When user selects "Oil Change" in "services"
#    And click on "Continue" button
#    When user is navigated to "dropoff" screen
#    And click on "Continue" button
#    And user is navigated to "date-time" screen
#    And click on "After Hours" time slot
#    Then verify After Hours modal appears
#    Then click on  close button on the "After Hours" modal pop up
#    And user is navigated to "date-time" screen







































