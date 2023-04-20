@MobileTest4
Feature: CBA Application

  Background:
    Given open the Chrome app on "emulator-5554_11.0.0"
    And opening Christian brothers dashboard in chrome

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
    And user able to select_available date
    And user verifying available_time slot_for_that_date

  @CBA_116 @CBA
  Scenario: 160_Verify if the user has selected a time slot in the week view then tap "Calendar view", the date and time selected in week view are highlighted and displayed in the calendar view

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on the "Calender View" button
    And user validating the selected date


  @CBA_117 @CBA
  Scenario:161_Verify tapping "Week view" takes the user back to the current weeks view

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then User validating calender view page
    And user navigates on the "Week view" button
    Then User validating week view page


  @CBA_118 @CBA
  Scenario:162_Verify the user can tap "Next day" to view the time slots for the following day

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user click on the "Calender View" button
    Then user is able to see the monthyear
    And user able to select nextday date in calender and validating

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

  @CBA_152 @CBA1
  Scenario: 175_Verify the "Zip code" field is present and required
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
    And "zip" is present
    And user click on "Continue" button
    Then user is able to see error message "Please enter a valid zip code"

  @CBA_153 @CBA1
  Scenario: 176_Verify the "Last name" field is present and required
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
    And "altPhone" is present
    And user click on "Continue" button
    Then user is not  able to see error message

  @CBA_154 @CBA1
  Scenario: 177_Verify the text "Is this your first time visiting our South Sarasota store?*" radio button is present and required
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
    And Location question is present
    And user click on "Continue" button
    Then user is able to see error message "Please choose Yes or No"

  @CBA_155 @CBA1
  Scenario: 178_Verify the presence of the "Yes" and "No" radio buttons
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
    And radio buttons are present


  @CBA_157  @CBA1
  Scenario: 179_Verify if the user attempts to press the "Continue" button without the required fields filled out, inline errors are shown
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
    And user click on "Continue" button
    Then user is able to see the inline error messages

  @CBA_163 @CBA1
  Scenario: 180_Verify if the user enters an invalid email address format the inline error is displayed
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
    And user enters an invalid "email" "ishrar134gmail.com"
    Then user is able to see error message "Please enter a valid email address"

  @CBA_166 @CBA1
  Scenario: 181_Verify if the user enters an invalid phone number format the inline error is displayed
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
    And user enters an invalid "phone" "7879888"
    Then user is able to see error message "Please enter a 10 digit phone number"

  @CBA_17 @CBA1
  Scenario: 182_Verify the "I" option present along common services and the functionality
    And  Common services "i" button should be present
    When user clicks on the "Common Services" "1"  button
    Then user is able to see an informative page with description of all the car services

  @CBA_170 @CBA1
  Scenario: 183_Verify the "Alt. phone number" is capped at 10 digits
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
    And user enters an invalid "altPhone" "123456789012"
    Then getting the value of "altPhone"


  @CBA_176 @CBA1
  Scenario: 184_Verify tapping the "Previous" button will take the user to the Vehicle Info screen
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
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    Then click on "Previous" button
    Then user is navigated to "vehicle-info" screen
    Then user is able to see the "2021" year "Acura" make and "ILX" model

  @CBA_177 @CBA1
  Scenario: 194_Verify tapping the "Continue" button on the vehicle info screen brings the user to the personal information screen with information preserved
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
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    Then click on "Previous" button
    And user click on "Continue" button
    Then user is navigated to "personal-info" screen

  @CBA_179 @CBA1
  Scenario: 195_Verify the stepper has 4 check marks  and the vehicle checkmark icon is highlighted
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
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then verify that stepper icon is highlighted

  @CBA_181 @CBA1
  Scenario: 196_Verify the user sees their selected service(s) in the first sectioned area
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
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then user sees their selected service in the first sectioned area

  @CBA_182 @CBA1
  Scenario: 197_Verify the user sees their specified drop off/SAW method the selected services in the first sectioned area
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
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then user sees their Drop off or Sit and Wait service in the first sectioned area

  @CBA_183 @CBA1
  Scenario:198_Verify if the user has chosen an after hours time slot, the "i" icon is present to the right of the appointment type
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "After Hours" timeslot
    And user is able to click on the done button
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then user is able to see the i button in the review page

  @CBA_184 @CBA1
  Scenario: 199_Verify if the user clicks the "i" icon, the after hours modal appears
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "After Hours" timeslot
    And user is able to click on the done button
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then user click on the i button in the review screen
    Then user is able to see the after model

  @CBA_185 @CBA1
  Scenario:200_Verify the user sees their additional notes (if any) in the first sectioned area
    When  user selects "Other" in "services"
    And user add "my vehicle name is Appache"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "5:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then see their additional notes in the first sectioned area

  @CBA_187 @CBA1
  Scenario:201_Verify selecting "Edit" in the first sectioned area takes the user to the services screen
    When  user selects "Other" in "services"
    And user add "my vehicle name is Appache"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "5:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    And user click on "Edit" button
    Then user is navigated to "https://cbascheduler-frontend-dev.azurewebsites.net/south-sarasota/" screen

  @CBA_19 @CBA1
  Scenario: 202_Verify "Stay and Wait" functionality
    When user selects "Oil Change" in "services"
    When user selects "State Inspection" in "services"
    When user selects "Tire Rotation" in "services"
    And user click on "Continue" button
    Then user should be able to see the stay and wait button

  @CBA_20 @CBA1
  Scenario: 203_To verify what happens when we select one stay & wait and one Drop-off services
    When user selects "Oil Change" in "services"
    When user selects "Battery / Electrical" in "services"
    And user click on "Continue" button
    Then Drop Off Vehicle functionality should be enabled
    Then stay and wait option should be disabled

  @CBA_21 @CBA1
  Scenario: 205_Verify if the user hovers over "Stay and Wait" or "Drop Off Vehicle", the option should go into the hover state
    When user selects "Oil Change" in "services"
    When user selects "State Inspection" in "services"
    When user selects "Tire Rotation" in "services"
    And user click on "Continue" button
    And wait for some time to load the page
    And hover on "Stay and Wait" Option
    Then "Stay and Wait" services should be activated


  @CBA_22 @CBA1
  Scenario: 206_Verify when user clicks on the "I" button then whichever service has stay and wait availability, a chair icon is present to the left of "Stay & Wait Available
    When user clicks on the "Common Services" "1"  button
    Then user should be able to see the stay and wait text along with the chair icon

  @CBA_23 @CBA1
  Scenario: 207_Verify when a user hovers over an service square box, a hover state should be activated
    When user hovers the "Oil Change" services
    Then "Oil Change" services should be activated

  @CBA_24 @CBA1
  Scenario: 208_Verify different services present in the "Something's Wrong" section
    And all the services in the Something_s wrong is present
    When user selects "Battery / Electrical" in "services"
    Then "Battery / Electrical" services should be activated
    When user selects "Brakes" in "services"
    Then "Brakes" services should be activated




  @CBA_25 @CBA1
  Scenario:209_Verify the hover functionality of "Cancel" button
    Then hover on "Cancel" button

  @CBA_38 @CBA1
 Scenario:210_Verify the 'Continue' button is disabled until a service has been chosen
    Then  verify "Continue" button is disabled
    When user selects "Other" in "something's wrong"
    Then verify textbox is enabled and message is being displayed

  @CBA_41 @CBA1
  Scenario:211_Verify after selecting services, tapping the 'Continue' button takes the user to the Drop Off/SAW screen
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    Then user is navigated to "drop off" screen

  @CBA_46 @CBA1
  Scenario:212_Verify when the user has clicked an icon square, the active state is activated
    When user selects "Oil Change" in "services"
    Then verify "Oil Change" in "services" is "activated"

  @CBA_47 @CBA1
  Scenario:213_Verify when user select more than one service icon and unselect any service, then box should not be highlighted
    When user selects "Oil Change" in "services"
    When user selects "State Inspection" in "services"
    When user unselects "Oil Change" in "services"
    Then verify "Oil Change" in "services" is "not highlighted"

  @CBA_48 @CBA1
  Scenario:214_Verify if the user has selected the "Other" service, the text area should become required
    When user selects "Other" in "something's wrong"
    Then verify textbox is mandatory

  @CBA_54 @CBA3
  Scenario:215_Verify, when open "i" icon, the x icon is located in the upper right corner of the modal
    When user clicks on the "Common Services" "1"  button
    Then verify close button is available on the "informational" modal pop up

  @CBA_55 @CBA3
  Scenario:216_Verify the first breadcrumb is highlighted
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    Then verify the first breadcrumb is highlighted

  @CBA_56 @CBA7
  Scenario:217_Verify if one service has been selected, the subject line reads "I would like to visit the [location] store for [service]"
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change" is displayed


  @CBA_57 @CBA3
  Scenario:218_Verify if two services have been selected, the subject line reads "I would like to visit the [location] store for [service1] and [service2]"
    When user selects "Oil Change" in "services"
    When user selects "Pre-Purchase Inspection" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "Oil Change and Pre-Purchase Inspection" is displayed

  @CBA_58 @CBA3
  Scenario:219_Verify if three or more services have been selected, the subject line reads "I would like to visit the [location] store for multiple services"
    When user selects "Oil Change" in "services"
    When user selects "Pre-Purchase Inspection" in "services"
    When user selects "Fluid Service" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then verify subject line - I would like to visit the "South Sarasota" store for "multiple services" is displayed


  @CBA_59 @CBA3
  Scenario:220_Verify if the user chooses services with SAW availability, the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then the subheading reads "Based on the services you selected, you can choose to wait while we take care of your vehicle."

  @CBA_60 @CBA3
  Scenario:221_Verify if the user chooses services with no SAW availability, the subheading reads "Based on the services you selected, we'll need you to drop off your vehicle."
    When user selects "Fluid Service" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then the subheading reads "Based on the services you selected, we’ll need you to drop off your vehicle."

  @CBA_74 @CBA3
  Scenario:222_Verify if the user selects "Stay and Wait", the shuttle service option is disabled
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And shuttle service option is disabled

  @CBA_79 @CBA3
  Scenario:223_Verify if the user clicks the "Previous" button, they are taken to the Services screen
    When user selects "Oil Change" in "services"
    Then click on "Continue" button
    When user is navigated to "dropoff" screen
    Then click on "Previous" button
    Then user is navigated to "services" screen

  @CBA_80 @CBA3
  Scenario:224_Verify if the user clicks "Previous", the previously selected services are still shown on the services screen
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    Then click on "Previous" button
    When user is navigated to "services" screen
    Then verify "Oil Change" in "services" is "highlighted"

  @CBA_82 @CBA6
  Scenario:229_Verify clicking the "Continue" button brings the user to the date/time screen
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen

  @CBA_83 @CBA6
  Scenario: 230_Verify the stepper has 1 checkmark and highlighted calendar icon followed by vehicle icon, person icon, and vehicle with a checkmark icon
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen
    Then verify that stepper icon is highlighted

  @CBA_84 @CBA6
  Scenario:231_Verify the screen reads "What day and time work best for you?" followed by "Our current availability is listed below. Please select what is most convenient for you."
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen
    Then verify "What day and time work best for you?" is displayed
    Then verify "Our current availability is listed below. Please select what is most convenient for you." is displayed

  @CBA_87 @CBA6
  Scenario:232_Verify the "Continue" button is disabled until the user selects a time slot.
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    Then user is navigated to "date-time" screen
    Then  verify "Continue" button is disabled

  @CBA_89 @CBA6
  Scenario:233_Verify the number of time slots available matches the number listed
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    Then verify the number of time slots available matches the number listed


  @CBA_92 @CBA6
  Scenario:234_Verify if the user has selected the stay and wait option, the "After Hours" time slot option is not available
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And click on "Continue" button
    And user is navigated to "date-time" screen
    Then verify After Hours time slot is "not available"

  @CBA_94 @CBA6
  Scenario:235_Verify if "After Hours" drop off is chosen, a modal appears
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears


  @CBA_95 @CBA6
  Scenario:236_Verify the text for the after hours modal
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears
    Then verify "You’ve selected After Hours Drop Off." is displayed
    Then verify "What's next?" is displayed
    Then verify "Remove any valuables" is displayed
    Then verify "Lock your vehicle" is displayed
    Then verify "Place only your vehicle key through slot in the door or as instructed (see signage near front door)" is displayed
    Then verify "We will contact you prior to performing any work. Thank you!" is displayed

  @CBA_96 @CBA6
  Scenario:237_Verify the after hours modal contains a "Done" button
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears
    Then user is able to see "Done" button

  @CBA_97 @CBA6
  Scenario:238_Verify, when clicked, the after hours "Done" button closes the modal and returns the user to the time/date screen
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears
    Then click on "Done" button
    Then user is navigated to "date-time" screen

  @CBA_98 @CBA6
  Scenario:239_Verify the presence of the X icon in the after hours modal
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears
    Then verify close button is available on the "After Hours" modal pop up

  @CBA_99 @CBA6
  Scenario:240_Verify clicking the X icon in the after hours modal closes the modal and returns the user to the time/date screen
    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And click on "Continue" button
    And user is navigated to "date-time" screen
    And click on "After Hours" time slot
    Then verify After Hours modal appears
    Then click on  close button on the "After Hours" modal pop up
    And user is navigated to "date-time" screen


  @CBA_90 @CBA6
  Scenario: 241_Verify the user can select only one slot at at time, which is visually indicated to the userWhen  user selects "Alignment" in "services"
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the available timeslot
    Then user is able to see the available timeslot
    And user select the the available timeslot
    Then user is able to see the available timeslot




  @CBA_134 @CBA6
  Scenario:242_Verify the user can tap on the "Model" field to choose a model once the year and make have been selected

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model


  @CBA_136 @CBA6
  Scenario:243_Verify user can tap on the "Color" field to choose any color from the dropdown

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model
    When user clicks on the color dropdown
    And user validating  color list drop down
    When user selects the "Blue" color



  @CBA_138 @CBA
  Scenario:244_Verify if the user changes the year selection, the appropriate makes are returned for that year

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user select the the available timeslot
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    When user clicks on the color dropdown

    When user selects the "Blue" color
    And user able to see the year_model_make

    When user clicks on the year button
    When user selects the "2020" year
    And user able to see the year_model_make

  @CBA_139 @CBA6
  Scenario:245_Verify if the user changes the make, the appropriate models are returned for that year and make

    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model
    When user clicks on the color dropdown
    And user validating  color list drop down
    When user selects the "Blue" color
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Audi" make and validating page



  @CBA_140 @CBA6
  Scenario:  246_Verify clicking the "Previous" button will take the user to the date/time screen


    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model
    When user clicks on the color dropdown
    And user validating  color list drop down
    When user selects the "Blue" color
    And click on the "Previous" button
    Then User validating week view page


  @CBA_141 @CBA6
  Scenario: 247_Verify when the "Previous" button has been clicked, the selected time/date are still selected
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the available timeslot
    And user click on "Continue" button
    And user click on "Previous" button
    Then user is able to see the available timeslot

  @CBA_142 @CBA6
  Scenario:  248_Verify once all of the required fields are selected, clicking the "Continue" button takes the user to the personal info screen


    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model
    When user clicks on the color dropdown
    And user validating  color list drop down
    When user selects the "Blue" color
    And user click on "Continue" button
    Then User validating personal info page

  @CBA_143 @CBA6
  Scenario: 249_Verify the stepper has 3 check icons and the person icon highlighted followed by the vehicle with a check icon in the stepper


    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to see the vehicle info page
    And Make model colour buttons are not enabled
    When user clicks on the year button
    And user validating the year drop down list
    When user selects the "2021" year and verifies page
    When user clicks on the make button
    And user validating makes drop down list
    When user selects the "Acura" make and validating page
    When user clicks on the model button
    And user validating  model list drop down
    When user selects the "ILX" model
    When user clicks on the color dropdown
    And user validating  color list drop down
    When user selects the "Blue" color
    And user click on "Continue" button
    Then User validating personal info page
    And user verifying stepper mark

  @CBA_147 @CBA6
  Scenario: 250_Verify the "Continue" button is disabled until the user enters all of the required fields without any errors.
    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the available timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    Then "Continue" button is Enabled

  @CBA_129 @CBA6
  Scenario:251_Verify that make is not available until the user has selected a year from the dropdown
    When  user selects "Alignment" in "services"
    And user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And user able to select available_time
    And user click on "Continue" button
    Then user is able to validating make button un availability
    When user clicks on the year button
    And user validating the year drop down list
    Then user is able to validating make button availability


  @CBA_202 @CBA6
  Scenario: 252_Verify the chosen location's name, address, and phone number are displayed in the third sectioned area
    When  user selects "Alignment" in "services"
    And user add "my vehicle name is Appache"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the available timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then user is able to see the chosen location's name as "South Sarasota", address as "5869 Derek Ave", and phone number as "(941) 413-3490" in the third sectioned area.

  @CBA_209 @CBA6
  Scenario: 253_Verify the chosen location's name, address, and phone number are displayed in the third sectioned area
    When  user selects "Alignment" in "services"
    And user add "my vehicle name is Appache"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the available timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "Rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    And user click on  "4" Edit button in "fourth sectioned area" area
    And user is navigated to "personal-info" screen

  @CBA_212 @CBA6
  Scenario: 254_Verify shuttle service verification is disabled if the user has chosen a stay and wait appointment

    When user selects "Oil Change" in "services"
    And click on "Continue" button
    When user is navigated to "dropoff" screen
    And select stay and wait option
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "5:00 PM" timeslot
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then shuttle service option should be disabled


  @CBA_213 @CBA6
  Scenario:255_Verify shuttle service verification is disabled if the user has chosen an after hours appointment

    When  user selects "Alignment" in "services"
    And   user click on "Continue" button
    Then "Drop and vehicle" button is already selected
    And user click on "Continue" button
    And wait for some time to load the page
    And user select the the "After Hours" timeslot
    And user is able to click on the done button
    And user click on "Continue" button
    When user clicks on the year button
    When user selects the "2021" year
    When user clicks on the make button
    When user selects the "Acura" make
    When user clicks on the model button
    When user selects the "ILX" model
    And user click on "Continue" button
    When user is on personal info page
    When user enter "firstName" as "Rahul"
    When user enter "lastName" as "Kumar"
    When user enter "email" as "rahul12@gmail.com"
    When user enter "phone" as "1234567890"
    When user enter "altPhone" as "0987654321"
    When user enter "zip" as "112223"
    When user clicked on the yes button
    And user click on "Continue" button
    Then hover on "Previous" button
    Then shuttle service option should be disabled

  @CBA_49 @CBA6
  Scenario: 256_Verify when user enter more than 500 characters in the text box (including spaces)
    When  user selects "Other" in "services"
    And user add "my vehicle name is Appache" and validating size is not more than 500

  @CBA_51 @CBA
  Scenario: 257_Verify, the modal is open when click on "i" icon, the portion of the screen outside of the modal is blurred
    When user clicks on the "Common Services" "1"  button
    Then user not able to see "Other" in "services"

  @CBA_02 @CBA4
  Scenario:144_Verify that "i" icon displays with "something's wrong" category information.
    When user clicks on the "Something's Wrong" "2"  button
    Then user is able to see an informative page with description of all the car services
