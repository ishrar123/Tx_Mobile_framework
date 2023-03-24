package pageobjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

public class CBAPage {

    public static By something_wrong_i_button=By.xpath("(//div[@class='landing-services-section-top']/button[@class='info-button']) [2]");
    public static  By informative_page=By.xpath("//div[@class='services-modal']");
    public static  By Alignment_service =By.xpath("//p[text()='Alignment']");
    public static By oil_change_service=By.xpath("//p[text()='Oil Change']");
    public static By Tire_rotation_service=By.xpath("//p[text()='Tire Rotation']");
    public static  By common_service_collapse_button=By.xpath("(//div[@class='landing-services-section-top']/button[@class='collapse-button']) [1]");

    public static  By something_wrong_collapse_button=By.xpath("(//div[@class='landing-services-section-top']/button[@class='collapse-button']) [2]");

    public static  By something_wrong_all_Sevices=By.xpath("(//div[@class='landing-services-section-grid']) [2]");

    public static By common_service_all_service=By.xpath("//div[@class='landing-services-section-grid']) [1]");

    public static By common_service_i_button=By.xpath("(//div[@class='landing-services-section-top']/button[@class='info-button']) [1]");

    public static By state_inspection_service=By.xpath("//p[text()='State Inspection']");

    public  static   By Continue=By.xpath("//button[text()='Continue']");

    public static  By stay_and_wait=By.xpath("//button[@class='dropoff-icon']/p[text()='Stay and Wait']");
    public static  By Battery_eletrcal_Service=By.xpath("//p[text()='Battery / Electrical']");

    public static By drop_and_vehicle=By.xpath("//p[text()='Drop Off Vehicle']");

    public static By stay_and_wait_informative_page=By.xpath("//div[text()='Stay & Wait Available']");
    //public static By common_services_all_services=By.xpath("(//div[@class='landing-services-section-grid'])[1]");


    public static By textareaError = By.xpath("//textarea[@class='landing-other-field landing-other-error']");
    public static By textareaErrorMsg = By.xpath("//p[text()='You’ve selected ‘Other’, please add a comment before continuing']");
    public static By dropoffIcon = By.xpath("//p[text()='Drop Off Vehicle']//parent::button[@class='dropoff-icon selected']");
    public static By commonServicesHeader = By.xpath("//h2[text()='Common Services']");
    public static By dateTimeScreen = By.xpath("//h1[text()='What day and time work best for you?']");
    public static By services = By.xpath("//h2[text()='Common Services']//ancestor::section[@class='landing-services-section']//p[@class='service-text']");
    public static By closeButton = By.xpath("//button[contains(@class,'modal-close')]");
    public static By stayAndWaitIcon = By.xpath("//p[text()='Stay and Wait']//parent::button");
    public static By stayAndWaitIconSelected = By.xpath("//p[text()='Stay and Wait']//parent::button[@class='dropoff-icon selected']");
    public static By shuttleServiceText = By.xpath("//p[text()='Shuttle Service is unavailable for Stay & Wait or After Hours Dropoff.']");
    public static By slotsInADay = By.xpath("//p[@class='datepicker-times-available ' and contains(text(),'available')]//ancestor::div[2]//button[contains(text(),':')]");
    public static By slotsDates = By.xpath("//p[@class='datepicker-times-available ' and contains(text(),'available')]");
    public static By afterHoursModal = By.xpath("//div[@class='after-hours-modal']");
    public static By whatsNext = By.xpath("//p[@class='whats-next']");
    public static By particular_time_slot=By.xpath("//button[normalize-space()='12:00 PM']");
    public static By previous_button=By.xpath("//button[text()='Previous']");
    public static By Calender_View =By.xpath("(//button[@class='datetime-button-link']) [1]");

    public static By current_month=By.xpath("//div[@class='react-datepicker__current-month']");


    public static  By Something_s_wrong_services=By.xpath("//h2[text()=\"Something's Wrong\"]//ancestor::section[@class='landing-services-section']//p[@class='service-text']");

    public static By stay_and_wait_button=By.xpath("//button[@class='dropoff-icon']/p[text()='Stay and Wait']");

    public static By chair_icon=By.xpath("(//*[name()='svg'][@id='Layer_1'])");

    public static By week_view=By.xpath("//div[@class='weekview']");

    public static By date_time_toggle_icon=By.xpath("(//div[@class='toggle-icon']) [1]");

    public static By all_time_slots=By.xpath("//div[@class='datepicker-button-container']");
    public static By calendarViewButton = By.className("datetime-button-link");
    public static By calendarViewOpened = By.className("react-datepicker__month-container");

    public static By date=By.xpath("//p[@class='datepicker-date']");

    public static By close_button_common_services=By.xpath("//div[@class = 'services-modal']//button[@class='services-modal-close']");


    public static By informative_page_all_services=By.xpath("//div[@class='services-row']");

    public static By all_tools=By.xpath("//div[@class='breadcrumbs-container']/div[@class='breadcrumbs-icon']");






    public static By i_button(int i){
        return By.xpath("(//button[@class='info-button']) [" + i + "]");
    }

    public static By afterHoursSlot(String slot) {
        return (By.xpath("//button[@class='datepicker-btn ' and text()='" + slot + "']"));

    }
    public static By selecttimeslot(String timeslot){
        //button[normalize-space()='12:00 PM']
        return (By.xpath("//button[normalize-space()='" + timeslot + "']"));
        // return (By.xpath("//*[text()='" + text + "']"));


    }

    public static By slotsDatesDropdownArrow(int i) {
        return (By.xpath("(//p[@class='datepicker-times-available ' and contains(text(),'available')]//ancestor::div[2]//div[@class='toggle-icon'])[" + i + "]"));

    }

    public static By slotsDatesDate(int i) {
        return (By.xpath("(//p[@class='datepicker-times-available ' and contains(text(),'available')]//ancestor::div[2]//p[@class='datepicker-date'])[" + i + "]"));

    }


    public static By messageText(String text) {
        return (By.xpath("//*[text()='" + text + "']"));

    }

    public static By subjectLine(String location, String service) {
        return (By.xpath("//h1[text()='I would like to visit the ' and text()=' store for ']//a[text()='" + location + "']//following-sibling::i[contains(text(),'" + service + "')]"));
    }

    public static By subheading(String text) {
        return (By.xpath("//p[@class='dropoff-instructions' and text()='" + text + "']"));
    }


    public static By buttonPresent(String button) {
        return (By.xpath("//button[text()='" + button + "']"));

    }

    public static By buttonPresentDisabled(String button) {
        return (By.xpath("//div[@class='bottom-nav']//button[@disabled and text()='" + button + "']"));

    }

    public static By service(String text) {
        return (By.xpath("//p[@class='service-text' and text()='" + text + "']"));

    }

    public static By serviceSelected(String text) {
        return (By.xpath("//p[@class='service-text' and text()='" + text + "']//parent::button[@aria-checked='true']"));

    }

    public static By serviceNotSelected(String text) {
        return (By.xpath("//p[@class='service-text' and text()='" + text + "']//parent::button[@aria-checked='false']"));

    }

    public static By togglebutton(int i){
        return By.xpath("(//div[@class='landing-services-section-top']/button[@class='collapse-button']) [" + i + "]");
    }
    public static By know_more=By.xpath("//p[text()='We would love to know more...']");
}
