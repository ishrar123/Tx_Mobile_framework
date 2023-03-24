package step_definitions.CBA;

import com.relevantcodes.extentreports.LogStatus;
import io.cucumber.java.bs.A;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.java.en_scouse.An;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import pageobjects.CBAPage;
import step_definitions.BaseStepDefinitions;
import step_definitions.RunCukesTest;
import utilities.*;

import java.util.HashMap;
import java.util.List;

public class CBASteps extends KeywordUtil {

    public WebDriver driver = null;
    public static HashMap<String, String> dataMap;

    public CBASteps() {
        dataMap = BaseStepDefinitions.dataMap;
    }


    @Given("user is on the application")
    public void user_is_on_the_application() {

        String url = ConfigReader.getValue("CBA_URL");
        System.out.println("the url is:" + url);
        //driver.get("https://cbascheduler-frontend-dev.azurewebsites.net/south-sarasota");
        navigateToUrl("https://cbascheduler-frontend-dev.azurewebsites.net/south-sarasota");
    }

    @When("user clicks on the {string} i  button")
    public void uesr_clicks_on_the_i_button(String i) throws InterruptedException {
        // driver.findElement(By.xpath("(//div[@class='landing-services-section-top']/button[@class='info-button']) [2]")).click();
        isWebElementVisible(CBAPage.i_button(Integer.parseInt(i)));
        hoverOnElement(CBAPage.i_button(Integer.parseInt(i)));
        click(CBAPage.i_button(Integer.parseInt(i)),"click on the " +i+ " button");
    }

    @Then("user is able to see an informative page with description of all the car services")
    public void user_is_able_to_see_an_informative_page_with_description_of_all_the_car_services() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        Assert.assertTrue(isWebElementVisible(CBAPage.informative_page));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Informative page is displayed"));

    }

    @When("user clicks on the {string} toggle button")
    public void user_clicks_on_the_toggle_button(String togglebutton) throws InterruptedException {
        isWebElementVisible(CBAPage.togglebutton(Integer.parseInt(togglebutton)));
        hoverOnElement(CBAPage.togglebutton(Integer.parseInt(togglebutton)));
        click(CBAPage.togglebutton(Integer.parseInt(togglebutton)),"click on the something's Wrong collapse button");



    }

    @Then("user is not able to see the services in something wrong")
    public void user_is_not_able_to_see_the_services_in_something_wrong() throws InterruptedException {
        // List<WebElement> servicesList = getListElements(CBAPage.Something_s_wrong_services, "list of services ");
        //Assert.assertTrue(isWebElementNotPresent((CBAPage.something_wrong_all_Sevices)),"services list are not present");
        if (isWebElementVisible(CBAPage.Something_s_wrong_services)) {
            System.out.println("services are present");
        } else {
            hoverOnElement(CBAPage.know_more);
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Services are not visible"));
        }
    }

    @Then("user is able to see the services in the something_s wrongs")
    public void user_is_able_to_see_the_services_in_the_something_s_wrongs() throws InterruptedException {
        List<WebElement> servicesList = getListElements(CBAPage.Something_s_wrong_services, "list of services ");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("user is able to see the services "));
        for (int i = 0; i < servicesList.size(); i++) {
            hoverOnElement(CBAPage.know_more);
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(servicesList.get(i).getText()));

        }
    }

    @Then("user is able to see the services in the common servicess")
    public void user_is_able_to_see_the_services_in_the_common_servicess(){
        List<WebElement> servicesList = getListElements(CBAPage.services, "list of services");
        for (int i = 0; i < servicesList.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(servicesList.get(i).getText()));

        }
    }

    @Then("user is able to click on the services")
    public void user_is_able_to_click_on_the_services(){
        List<WebElement> servicesList = getListElements(CBAPage.services, "list of services");

    }



    @Then("user should be able to see the stay and wait button")
    public void user_should_be_able_to_see_the_stay_and_wait_button(){
        Assert.assertTrue(isWebElementVisible(CBAPage.stayAndWaitIcon),"stay and wait is present");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("stay and wait is present"));

    }





//    @When("user selects {string} in {string}")
//    public void user_selects_in(String service, String type) throws InterruptedException {
//        waitForVisible(CBAPage.service(service));
//        hoverOnElement(CBAPage.service(service));
//        Assert.assertTrue(isWebElementVisible(CBAPage.service(service)));
//        click(CBAPage.service(service), "Clicking on the " + service + " in " + type);
//        Assert.assertTrue(isWebElementVisible(CBAPage.serviceSelected(service)));
//        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(service + " is selected"));
//
//    }

    @When("user selects {string},{string} and {string} in {string}")
    public void user_selects_and_in(String service1, String service2, String service3, String type) throws InterruptedException {
        click(CBAPage.oil_change_service, "click on the common service");

        click(CBAPage.Tire_rotation_service, "click on the Tire Rotation");

        click(CBAPage.state_inspection_service, "click on the state inspection");


    }


    @And("{string} button should be present")
    public void button_should_be_present(String button) throws InterruptedException {
        waitForVisible(CBAPage.common_service_i_button);
        hoverOnElement(CBAPage.common_service_i_button);

        Assert.assertTrue(isWebElementVisible(CBAPage.common_service_i_button));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(button + " is present"));
    }

    @When("user clicks on the {string} button")
    public void user_clicks_on_the_button(String button) throws InterruptedException {
        waitForVisible(CBAPage.common_service_i_button);
        hoverOnElement(CBAPage.common_service_i_button);
        click(CBAPage.common_service_i_button, "click on the i button");

    }

    @Then("user is able to see the list of all the services")
    public void user_is_able_to_see_the_list_of_all_the_services() {
        waitForVisible(CBAPage.informative_page);
        Assert.assertTrue(isWebElementVisible(CBAPage.informative_page));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("able to see the list of all the services"));


    }

    @And("user click on {string} button")
    public void user_click_on_button(String button) throws InterruptedException {
        waitForVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        click(CBAPage.buttonPresent(button), "Clicking on the " + button + " button ");

    }












    @When("user Click services as Oil Change State Inspection and Tire Rotation")
    public void user_Click_services_as_Oil_Change_State_Inspection_and_Tire_Rotation() throws InterruptedException {
        Thread.sleep(5000);
        click(CBAPage.oil_change_service, "click on the oil service button");
        click(CBAPage.state_inspection_service, "click on the state inspection service");
        click(CBAPage.Tire_rotation_service, "click on the tire rotation service");
    }

    @And("user click on continue button")
    public void user_click_on_continue_button() throws InterruptedException {

        Thread.sleep(5000);
        click(CBAPage.Continue, "click on the continue button");
    }

    @And("stay and wait option should be present")
    public void stay_and_wait_option_should_be_present() {
        isWebElementVisible(CBAPage.stay_and_wait);
    }

    @And("Click Stay and Wait option")
    public void Click_Stay_and_Wait_option() {
        click(CBAPage.stay_and_wait, "click on the stay and wait ");
    }



    @Then("Drop Off Vehicle functionality should be enabled")
    public void Drop_Off_Vehicle_functionality_should_be_enabled() {
        Assert.assertFalse(isWebElementselected(CBAPage.drop_and_vehicle, "drop off functionlity should be enabled"));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Drop off functionality  is abled"));

    }


    @Then("stay and wait option should be disabled")
    public void Stay_and_Wait_functionality_should_be_disabled() {

        Assert.assertFalse(isWebElementNotPresent(CBAPage.stay_and_wait),"stay and wait option is disabled");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Stay and wait is disabled"));

    }



//    @And("user hovers on the stay and wait option")
//    public void user_hovers_on_the_stay_and_wait_option() throws InterruptedException {
//        Thread.sleep(5000);
//        GlobalUtil.hover_an_element((WebElement) CBAPage.stay_and_wait);
//    }



    @Then("user should be able to see the stay and wait text along with the chair icon")
    public void user_should_be_able_to_see_the_stay_and_wait_text_along_with_the_chair_icon() {
//        List<WebElement> servicesList=getListElements(CBAPage.informative_page_all_services,"all services");
//        for (int i = 0; i < servicesList.size(); i++) {
//            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(servicesList.get(i).getText()));
//            if(servicesList.contains("Oil Change")&&servicesList.contains("State Inspection")&&servicesList.contains("Tire Rotation")){
//                Assert.assertTrue(isWebElementVisible(CBAPage.stay_and_wait_informative_page));
//               RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("stay and wait text is present"));
//                Assert.assertTrue(isWebElementVisible(CBAPage.chair_icon));
//                RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("chair icon is present"));
//            }
//
//
//        }
//

        Assert.assertTrue(isWebElementVisible(CBAPage.stay_and_wait_informative_page));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("stay and wait text is present"));
        Assert.assertTrue(isWebElementVisible(CBAPage.chair_icon));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("chair icon is present"));


    }

    @When("user hovers the {string} services")
    public void user_hovers_the_services(String service) throws InterruptedException {
        waitForVisible(CBAPage.service(service));
        hoverOnElement(CBAPage.service(service));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("hover on the " +service));

    }
    @Then("{string} services should be activated")
    public void services_should_be_activated(String service){
        isWebElementselected(CBAPage.service(service), service +"is selected");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(service+ "is active"));


    }

    @And ("all the services in the Something_s wrong is present")
    public void all_the_services_in_the_Something_s_wrong_is_present(){
        List<WebElement> servicesList = getListElements(CBAPage.Something_s_wrong_services, "list of services ");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("user is able to see the services "));
        for (int i = 0; i < servicesList.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(servicesList.get(i).getText()));

        }
        Assert.assertEquals(servicesList.get(0).getText(), "A/C & Heat");
        Assert.assertEquals(servicesList.get(1).getText(), "Battery / Electrical");
        Assert.assertEquals(servicesList.get(2).getText(), "Brakes");
        Assert.assertEquals(servicesList.get(3).getText(), "Check Engine Light");
        Assert.assertEquals(servicesList.get(4).getText(), "Engine / Driving Trouble");
        Assert.assertEquals(servicesList.get(5).getText(), "Leak");
        Assert.assertEquals(servicesList.get(6).getText(), "Noise");
        Assert.assertEquals(servicesList.get(7).getText(), "Starting Trouble");
        Assert.assertEquals(servicesList.get(8).getText(), "Steering / Suspension");
        Assert.assertEquals(servicesList.get(9).getText(), "Transmission");
        Assert.assertEquals(servicesList.get(10).getText(), "Vibration");
        Assert.assertEquals(servicesList.get(11).getText(), "Other");



    }





    @Then("{string} button is already selected")
    public void vehicle_button_is_already_selected(String service) {
        waitForVisible(CBAPage.drop_and_vehicle);
        isWebElementselected(CBAPage.drop_and_vehicle, "drop and vehicle button is selected");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("drop and vehicle button is already selected"));


    }

    @And("wait for some time to load the page")
    public void wait_for_some_time_to_load_the_page() throws InterruptedException {
        Thread.sleep(70000);
    }
//    @And("user select the {string} timeslot")
//    public void user_select_the_timeslot(String timeslot) throws InterruptedException {
//        waitForVisible(CBAPage.selecttimeslot(timeslot));
//        hoverOnElement(CBAPage.selecttimeslot(timeslot));
//        click(CBAPage.selecttimeslot(timeslot),timeslot +"is selected");
//
//    }

    @And("click on the {string} button")
    public void click_on_the_button(String button) throws InterruptedException {
        isWebElementVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        click(CBAPage.buttonPresent(button),"click on the previous button");
    }

    @Then("user is able to see the selected {string}")
    public void user_is_able_to_see_the_selected(String timeslot){
        isWebElementselected(CBAPage.selecttimeslot(timeslot),timeslot +"is selected ");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor( "user is able to see the " +timeslot));

    }
    @And("user click on the {string} button")
    public void user_click_on_the_button(String button) throws InterruptedException {
        isWebElementVisible(CBAPage.Calender_View);
        hoverOnElement(CBAPage.Calender_View);
        click(CBAPage.Calender_View,"Click on the Calender View button");
    }
    @Then("user is able to see the monthyear")
    public void user_is_able_to_see_the_monthyear(){
        isWebElementVisible(CBAPage.current_month);
        String text=getElementTextWithFindElement(CBAPage.current_month);
        System.out.println(text);
        Assert.assertEquals(text,"MARCH 2023");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor( text + "is present"));

    }

    @Then("user is able to see the Calender View button")
    public void user_is_able_to_see_the_button(){
        Assert.assertTrue(isWebElementVisible(CBAPage.Calender_View));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor( "user is able to see the Calender View button" ));



    }

    @Then("user is able to see the current week and shows starting days of week")
    public void user_is_able_to_see_the_current_week_and_shows_starting_days_of_week(){
        List<WebElement> days = getListElements(CBAPage.week_view, "list of days");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(String.valueOf(days.size())));
        for (int i = 0; i < days.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(days.get(i).getText()));


        }
    }

    @Then("toggle icon is already selected")
    public void toggle_icon_is_already_selected() throws InterruptedException {
        isWebElementVisible(CBAPage.date_time_toggle_icon);
        hoverOnElement(CBAPage.date_time_toggle_icon);
        // Assert.assertTrue(isWebElementselected(CBAPage.date_time_toggle_icon,"toggle icon is already selected"));
        isWebElementselected(CBAPage.date_time_toggle_icon,"toggle icon is already selected");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Toggle icon is already selected"));
    }

    @Then("hover on {string} Option")
    public void user_hover_on_button(String button) throws InterruptedException {
        waitForVisible(CBAPage.stay_and_wait);
        hoverOnElement(CBAPage.stay_and_wait);
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(" Stay and wait is in focused state"));
    }
    @Then("user is able to see {string} button")
    public void presenceButton(String button) throws InterruptedException {
        waitForVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        Assert.assertTrue(isWebElementVisible(CBAPage.buttonPresent(button)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(button + " button is visible"));
    }

    @Then("verify {string} button is disabled")
    public void presenceButtonDisabled(String button) throws InterruptedException {
        waitForVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        Assert.assertTrue(isWebElementVisible(CBAPage.buttonPresent(button)));
        Assert.assertTrue(isWebElementVisible(CBAPage.buttonPresentDisabled(button)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(button + " button is visible and disabled"));
    }

    @Then("user selects {string} in {string}")
    public void SelectService(String service, String type) throws InterruptedException {
        waitForVisible(CBAPage.service(service));
        hoverOnElement(CBAPage.service(service));
        Assert.assertTrue(isWebElementVisible(CBAPage.service(service)));
        click(CBAPage.service(service), "Clicking on the " + service + " in " + type);
        Assert.assertTrue(isWebElementVisible(CBAPage.serviceSelected(service)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(service + " is selected"));

    }

    @Then("user unselects {string} in {string}")
    public void UnSelectService(String service, String type) throws InterruptedException {
        waitForVisible(CBAPage.service(service));
        hoverOnElement(CBAPage.service(service));
        Assert.assertTrue(isWebElementVisible(CBAPage.serviceSelected(service)));
        Assert.assertTrue(isWebElementVisible(CBAPage.service(service)));
        click(CBAPage.service(service), "Clicking on the " + service + " in " + type);
        Assert.assertTrue(isWebElementVisible(CBAPage.serviceNotSelected(service)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(service + " is unselected"));

    }

    @Then("verify textbox is enabled and message is being displayed")
    public void textboxBeforeContinue() throws InterruptedException {
        waitForVisible(CBAPage.textareaError);
        hoverOnElement(CBAPage.textareaError);
        Assert.assertTrue(isWebElementVisible(CBAPage.textareaError));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Mandatory textbox is visible"));
        Assert.assertTrue(isWebElementVisible(CBAPage.textareaErrorMsg));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("'You’ve selected ‘Other’, please add a comment before continuing' is visible"));
    }

    @Then("verify textbox is mandatory")
    public void textboxMandatory() throws InterruptedException {
        waitForVisible(CBAPage.textareaError);
        hoverOnElement(CBAPage.textareaError);
        Assert.assertTrue(isWebElementVisible(CBAPage.textareaError));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Mandatory textbox is visible"));
    }

    @Then("click on {string} button")
    public void buttonClick(String button) throws InterruptedException {
        waitForVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        click(CBAPage.buttonPresent(button), "Clicking on the " + button + " button ");
    }

    @Then("user is navigated to {string} screen")
    public void userIsNavigatedToScreen(String page) {
        if (page.equalsIgnoreCase("dropoff")) {
            waitForURLContains("dropoff");
            Assert.assertTrue(isWebElementVisible(CBAPage.dropoffIcon));
        } else if (page.equalsIgnoreCase("services")) {
            Assert.assertTrue(isWebElementVisible(CBAPage.commonServicesHeader));
        } else if (page.equalsIgnoreCase("date-time")) {
            waitForURLContains("date-time");
            Assert.assertTrue(isWebElementVisible(CBAPage.dateTimeScreen));
        }
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("user is navigated to the " + page + " screen"));
    }

    @Then("hover on {string} button")
    public void buttonhover(String button) throws InterruptedException {
        waitForVisible(CBAPage.buttonPresent(button));
        hoverOnElement(CBAPage.buttonPresent(button));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(button + " is in focused state"));
    }

    @Then("verify the list of services is displayed in alphabetical order")
    public void verifyTheListOfServicesIsDisplayedInAlphabeticalOrder() {
        List<WebElement> servicesList = getListElements(CBAPage.services, "list of services ");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Services are in the order - "));
        for (int i = 0; i < servicesList.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(servicesList.get(i).getText()));

        }
        Assert.assertEquals(servicesList.get(0).getText(), "Alignment");
        Assert.assertEquals(servicesList.get(1).getText(), "Fluid Service");
        Assert.assertEquals(servicesList.get(2).getText(), "Oil Change");
        Assert.assertEquals(servicesList.get(3).getText(), "Pre-Purchase Inspection");
        Assert.assertEquals(servicesList.get(4).getText(), "State Inspection");
        Assert.assertEquals(servicesList.get(5).getText(), "Tire Rotation");


    }

    @Then("verify {string} in {string} is {string}")
    public void verifyIs(String service, String type, String state) {

        if (state.equalsIgnoreCase("highlighted") || state.equalsIgnoreCase("activated"))
            Assert.assertTrue(isWebElementVisible(CBAPage.serviceSelected(service)));

        else if (state.equalsIgnoreCase("not highlighted") || state.equalsIgnoreCase("not activated"))
            Assert.assertTrue(isWebElementVisible(CBAPage.serviceNotSelected(service)));

        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(service + " in " + type + " is " + state));
    }

    @Then("verify close button is available on the {string} modal pop up")
    public void closeButton(String typeOfPopUp) throws InterruptedException {
        waitForVisible(CBAPage.closeButton);
        Assert.assertTrue(isWebElementVisible(CBAPage.closeButton));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("close button is visible"));
    }

    @Then("click on  close button on the {string} modal pop up")
    public void clickOnCloseButtonOnTheModalPopUp(String TypeOfPopUp) {
        waitForVisible(CBAPage.closeButton);
        click(CBAPage.closeButton, "Clicking on close button");
    }

    @Then("verify the first breadcrumb is highlighted")
    public void dropoffbreadcrumbHighligted() {
        waitForURLContains("dropoff");
        Assert.assertTrue(isWebElementVisible(CBAPage.dropoffIcon));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Drop off breadcrumb is highlighted"));
    }


    @Then("verify subject line - I would like to visit the {string} store for {string} is displayed")
    public void verifySubjectLineIWouldLikeToVisitTheStoreForIsDisplayed(String location, String service) {
        waitForURLContains("dropoff");
        Assert.assertTrue(isWebElementVisible(CBAPage.subjectLine(location, service)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("I would like to visit the " + location + " store for " + service + " is visible"));
    }


    @Then("the subheading reads {string}")
    public void theSubheadingReads(String message) {
        waitForURLContains("dropoff");
        Assert.assertTrue(isWebElementVisible(CBAPage.subheading(message)));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(message + " is visible"));

    }

    @Then("select stay and wait option")
    public void selectStayAndWaitOption() {
        click(CBAPage.stayAndWaitIcon, "Clicking on stay and wait option");
        Assert.assertTrue(isWebElementVisible(CBAPage.stayAndWaitIconSelected));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("stay and wait option is selected"));


    }

    @Then("verify {string} option is selected")
    public void verifyOption(String option) {
        waitForURLContains("dropoff");

        switch (option) {
            case "stay and wait":
                Assert.assertTrue(isWebElementVisible(CBAPage.stayAndWaitIconSelected));
                break;
            case "drop off":
                Assert.assertTrue(isWebElementVisible(CBAPage.dropoffIcon));
                break;

        }
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(option + " option is selected"));


    }

    @Then("shuttle service option is disabled")
    public void shuttleService() {
        Assert.assertTrue(isWebElementVisible(CBAPage.shuttleServiceText));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Shuttle service is disabled"));
    }

    @Then("verify {string} is displayed")
    public void verifyStringIsDisplayed(String message) {
        if (message.equalsIgnoreCase("What's next?")) {
            Assert.assertTrue(isWebElementVisible(CBAPage.whatsNext));

        } else {
            Assert.assertTrue(isWebElementVisible(CBAPage.messageText(message)));
        }
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(message + " is displayed"));

    }

    @Then("verify the number of time slots available matches the number listed")
    public void verifyTheNumberOfTimeSlotsAvailableMatchesTheNumberListed() throws InterruptedException {

        List<WebElement> datePickerTimes = getListElements(CBAPage.slotsDates, "list of date picker times");
        System.out.println("DSFG" + datePickerTimes.size());
        int count = 0;
        for (int i = 1; i < datePickerTimes.size(); i++) {
            System.out.println("IIIII" + i);
            if (i != 1) {
                hoverOnElement(CBAPage.
                        slotsDatesDropdownArrow(i));
                click(CBAPage.slotsDatesDropdownArrow(i), datePickerTimes.get(i).getText() + " for " + getElementText(CBAPage.slotsDatesDate(i)));
            }
            count = Integer.parseInt(datePickerTimes.get(i).getText().split(" available times")[0]);
            List<WebElement> slotsInADayList = getListElements(CBAPage.slotsInADay, "list of slots in a day");
            System.out.println(count + "DFGHJK" + slotsInADayList.size());
            Assert.assertEquals(count, slotsInADayList.size());


        }
    }

    @Then("verify After Hours time slot is {string}")
    public void verifyAfterHoursTimeSlotIs(String state) throws InterruptedException {
        Boolean bool = state.equalsIgnoreCase("available");
        if (bool == true) {
            hoverOnElement(CBAPage.afterHoursSlot("After Hours"));
            Assert.assertTrue(isWebElementVisible(CBAPage.afterHoursSlot("After Hours")));
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("After Hours slot is available"));
        }
        if (bool == false) {
            Assert.assertFalse(isWebElementVisible(CBAPage.afterHoursSlot("After Hours")));
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("After Hours slot is not available"));

        }
    }

    @Then("verify After Hours modal appears")
    public void verifyAfterHoursModalAppears() {
        waitForVisible(CBAPage.afterHoursModal);
        Assert.assertTrue(isWebElementVisible(CBAPage.afterHoursModal));
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("After Hours modal is visible"));

    }

    @And("click on {string} time slot")
    public void clickOnAfterHoursTimeSlot(String slot) throws InterruptedException {
        waitForVisible(CBAPage.afterHoursSlot(slot));
        hoverOnElement(CBAPage.afterHoursSlot(slot));
        if (slot.equalsIgnoreCase("After Hours")) {
            click(CBAPage.afterHoursSlot(slot), "Clicking on After Hours slot");
            waitForVisible(CBAPage.afterHoursModal);
        } else {
            click(CBAPage.afterHoursSlot(slot), "Clicking on " + slot + " slot");
        }

    }

    @And("user select the {string} timeslot")
    public void user_select_the_timeslot(String timeslot) throws InterruptedException {
        if(isWebElementVisible(CBAPage.selecttimeslot(timeslot))){
            waitForVisible(CBAPage.selecttimeslot(timeslot));
            hoverOnElement(CBAPage.selecttimeslot(timeslot));
            click(CBAPage.selecttimeslot(timeslot),timeslot +"is selected");
            //Assert.assertTrue(isWebElementselected(CBAPage.selecttimeslot(timeslot),timeslot +"is selected"));
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(timeslot +"is selected"));
        }
        else{
            //Assert.assertTrue(isWebElementNotPresent(CBAPage.selecttimeslot(timeslot)));
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(timeslot +"is not selected"));
        }
    }




    @And("click on calender view")
    public void clickOnCalenderView() {
        waitForVisible(CBAPage.calendarViewButton);
        click(CBAPage.calendarViewButton, "Clicking on calendar view");
        waitForVisible(CBAPage.calendarViewOpened);
        Assert.assertTrue(isWebElementVisible(CBAPage.calendarViewOpened));


    }
    @Then("user is able to see the next 7 dates")
    public void user_is_able_to_view_the_next_7_dates(){
        List<WebElement> all_dates=getListElements(CBAPage.date,"getting all the list");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(String.valueOf(all_dates.size())));
        for (int i = 0; i < all_dates.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(all_dates.get(i).getText()));


        }

    }
    @Then("user is able to see the previous 7 dates")
    public void user_is_able_to_view_the_time_slots(){
        List<WebElement> all_dates=getListElements(CBAPage.date,"getting all the list");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(String.valueOf(all_dates.size())));
        for (int i = 0; i < all_dates.size(); i++) {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(all_dates.get(i).getText()));


        }

    }

    @Then("user is not able to see the services in common services")
    public void see_the_services_in_common_services(){
        if (isWebElementVisible(CBAPage.common_service_all_service)) {
            System.out.println("services are present");
        } else {
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("Services are not visible"));
        }
    }

    @And("user clicks on close button of Informative page")
    public void userClicksOnCloseButtonOfInformativePage() {

        Assert.assertTrue(isWebElementVisible(CBAPage.close_button_common_services));
        click(CBAPage.close_button_common_services,"Click on close button");
    }

    @Then("Informative page closes.")
    public void informativePageCloses() {
        Assert.assertTrue(isWebElementVisible(CBAPage.informative_page));
    }

    @And("user is able to see all the tools")
    public void user_is_able_to_see_all_the_tools(){
        List <WebElement> tools=getListElements(CBAPage.all_tools,"toolslist");
        RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor(String.valueOf(tools.get(0))));
        if(tools.get(0).isSelected()){
            RunCukesTest.logger.log(LogStatus.PASS, HTMLReportUtil.passStringGreenColor("is selected"));
        }

    }
}


