package step_definitions.CBA;

import com.relevantcodes.extentreports.LogStatus;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.testng.Assert;
import pageobjects.CBAPage;
import step_definitions.BaseStepDefinitions;
import step_definitions.RunCukesTest;
import utilities.ConfigReader;
import utilities.HTMLReportUtil;
import utilities.KeywordUtil;

import java.util.HashMap;
import java.util.List;

public class CBASteps extends KeywordUtil {

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

    @When("user clicks on the i icon")
    public void user_clicks_on_the_i_button() {
        click(CBAPage.something_wrong_i_button, "Clicking on the i icon");

    }

    @Then("user is able to see an informative page with description of all the car services")
    public void user_is_able_to_see_an_informative_page_with_description_of_all_the_car_services() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        if (isWebElementVisible(CBAPage.informative_page)) {
            System.out.println("informative page is displayed");
        } else {
            System.out.println("page is not displayed");
        }


    }

    @When("user selects the one sevice in the common services option")
    public void user_selects_the_one_sevice_in_the_common_services_option() {
        click(CBAPage.Alignment_service, "select the alignment service");
    }

    @And("user selects more than one service")
    public void user_selects_more_than_one_service() {
        click(CBAPage.oil_change_service, "Select the Oil change service");
        click(CBAPage.Tire_rotation_service, "select the Tire rotatio service");
    }

    @When("user clicks on the collapse button")
    public void user_clicks_on_the_collapse_button() {
        click(CBAPage.common_service_collapse_button, "Clicking on the collapse button");
    }

    @Then("user is able to see the selected services")
    public void user_is_able_to_see_the_selected_services() {
        isWebElementVisible(By.xpath("//p[text()='Oil Change']"));
        isWebElementVisible(By.xpath("//p[text()='Tire Rotation']"));
    }

    @When("user clicks on the something_s wrong toggle button")
    public void user_clicks_on_the_something_s_wrong_toggle_button() {
        click(CBAPage.something_wrong_collapse_button, "click on the something's wrong collapse button");
    }

    @And("user is not able to see any services")
    public void user_is_not_able_to_see_any_services() {

        if (isWebElementNotPresent(CBAPage.something_wrong_all_Sevices)) {
            System.out.println("services are not present");
        } else {
            System.out.println("services are present");
        }
    }

    @Then("user is able to see the services in the something_s wrong")
    public void user_is_able_to_see_the_services_in_the_something_s_wrong() {
        if (isWebElementVisible(CBAPage.something_wrong_all_Sevices)) {
            System.out.println("services are present");
        } else {
            System.out.println("services are present");
        }
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
                hoverOnElement(CBAPage.slotsDatesDropdownArrow(i));
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


    @And("click on calender view")
    public void clickOnCalenderView() {
        waitForVisible(CBAPage.calendarViewButton);
        click(CBAPage.calendarViewButton, "Clicking on calendar view");
        waitForVisible(CBAPage.calendarViewOpened);
        Assert.assertTrue(isWebElementVisible(CBAPage.calendarViewOpened));


    }

}
