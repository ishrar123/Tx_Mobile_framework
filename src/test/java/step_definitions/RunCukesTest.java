package step_definitions;

import azureDevOpsUtil.AzureDevOpsUtil;
import com.google.common.io.Files;
import com.relevantcodes.extentreports.ExtentReports;
import com.relevantcodes.extentreports.ExtentTest;
import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import jirautil.JiraUtil;
import mantisutil.ConnectMantis;
import org.apache.commons.io.FileUtils;
import org.testng.ITestContext;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.BeforeTest;
import utilities.*;

import java.io.File;
import java.io.IOException;
import java.util.Date;

@CucumberOptions(features = "classpath:features/CBA/CBA_Web_testcases.feature", plugin = {"pretty", "html:target/cucumber-html-report.html",
        "json:target/cucumber.json"},tags ="@CBA4",monochrome = true
)
public class RunCukesTest extends AbstractTestNGCucumberTests {

    public static ExtentTest logger;
    public static String tagName = null;
    static ExtentReports extent;

    @BeforeSuite
    public void directoryCleanUp() {
        try {

            String filePath = System.getProperty("user.dir") + File.separator + ConfigReader.getValue("screenshotPath");
            if (new File(filePath).exists()) {
                FileUtils.cleanDirectory(new File(filePath));
            } else {
                FileUtils.forceMkdir(new File(filePath));
            }

            filePath = System.getProperty("user.dir") + File.separator + ConfigReader.getValue("screenshotPathPass");
            if (new File(filePath).exists()) {
                FileUtils.cleanDirectory(new File(filePath));
            } else {
                FileUtils.forceMkdir(new File(filePath));
            }

            filePath = System.getProperty("user.dir") + File.separator + "Jmeter" + File.separator + "Results";
            if (new File(filePath).exists()) {
                FileUtils.cleanDirectory(new File(filePath));
            } else {
                FileUtils.forceMkdir(new File(filePath));
            }

            filePath = System.getProperty("user.dir") + File.separator + "ExecutionReports" + File.separator + "HTMLReports";
            if (new File(filePath).exists()) {
                FileUtils.cleanDirectory(new File(filePath));
            } else {
                FileUtils.forceMkdir(new File(filePath));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @BeforeTest
    public void onStart(ITestContext context) {
        try {
            extent = new ExtentReports(System.getProperty("user.dir") + ConfigReader.getValue("extentReportPath"));

            extent.loadConfig(new File(System.getProperty("user.dir") + ConfigReader.getValue("extentConfigPath")));
            // Get all the common setting from excel file that are required for
            GlobalUtil.setCommonSettings(ExcelDataUtil.getCommonSettings());

            String browser = "";
            browser = GlobalUtil.getCommonSettings().getBrowser();
            LogUtil.infoLog(RunCukesTest.class, browser);

            String executionEnv = "";
            executionEnv = GlobalUtil.getCommonSettings().getExecutionEnv();

            String url = "";
            url = GlobalUtil.getCommonSettings().getUrl();

            if (browser == null)
                browser = ConfigReader.getValue("defaultBrowser");

            if (executionEnv == null)
                executionEnv = ConfigReader.getValue("defaultExecutionEnvironment");

            // testlink config
//            if (GlobalUtil.getCommonSettings().getManageToolName().equalsIgnoreCase("Testlink")) {
//                TestLinkUtil.DEV_KEY = GlobalUtil.getCommonSettings().getTestlinkAPIKey();
//                TestLinkUtil.SERVER_URL = "http://" + GlobalUtil.getCommonSettings().getTestLinkHostName()
//                        + "/testlink-1.9.16/lib/api/xmlrpc/v1/xmlrpc.php";
//                TestLinkUtil.projectName = GlobalUtil.getCommonSettings().getTestlinkProjectName();
//                TestLinkUtil.testPlanName = GlobalUtil.getCommonSettings().getTestlinkPlanName();
//                TestLinkUtil.buildName = GlobalUtil.getCommonSettings().getBuildNumber();
//                TestLinkUtil.needUpdate = GlobalUtil.getCommonSettings().getTestlinkTool();
//                GlobalUtil.testlinkapi = new TestLinkUtil();
//            }
//
            //ADO Config for Test Management
            if (GlobalUtil.getCommonSettings().getManageToolName().equalsIgnoreCase("Azure DevOps")) {
                // Jira Test management config
                AzureDevOpsUtil.ADO_URI = GlobalUtil.getCommonSettings().getTestLinkHostName();
                AzureDevOpsUtil.ADO_PAT = GlobalUtil.getCommonSettings().getTestlinkAPIKey();
                AzureDevOpsUtil.ADO_PROJECT_NAME = GlobalUtil.getCommonSettings().getTestlinkProjectName();
                AzureDevOpsUtil.ADO_TEST_PLAN_NAME = GlobalUtil.getCommonSettings().getTestlinkPlanName();
                AzureDevOpsUtil.ADO_ORG_NAME = GlobalUtil.getCommonSettings().getTestlinkOrgName();
                AzureDevOpsUtil.SUITE_ID = GlobalUtil.getCommonSettings().getTestLinkSuiteId();
                GlobalUtil.azureDevOpsApi = new AzureDevOpsUtil();

                // remaining details will initialized when Jira is selected a bug
                // tracking tool
            } else
                GlobalUtil.getCommonSettings().setTestlinkTool("NO");

            // setting up of Bug tracking "MANTIS" tool configuration
//            if (GlobalUtil.getCommonSettings().getBugToolName().equalsIgnoreCase("Mantis")) {
//                ConnectMantis.MANTIS_URL = "http://" + GlobalUtil.getCommonSettings().getbugToolHostName()
//                        + "/bugTool/api/soap/bugToolconnect.php";
//                ConnectMantis.MANTIS_USER = GlobalUtil.getCommonSettings().getbugToolUserName();
//                ConnectMantis.MANTIS_PWD = GlobalUtil.getCommonSettings().getbugToolPassword();
//                ConnectMantis.MANTIS_PROJET = GlobalUtil.getCommonSettings().getbugToolProjectName();
//            }
////
////            // setting up of Bug tracking "Jira" tool configuration
////            if (GlobalUtil.getCommonSettings().getBugToolName().equalsIgnoreCase("Jira")) {
////                JiraUtil.JIRA_URL = GlobalUtil.getCommonSettings().getbugToolHostName();
////                JiraUtil.USERNAME = GlobalUtil.getCommonSettings().getbugToolUserName();
////                JiraUtil.PASSWORD = GlobalUtil.getCommonSettings().getbugToolPassword();
////                JiraUtil.JIRA_PROJECT = GlobalUtil.getCommonSettings().getbugToolProjectName();
////                GlobalUtil.jiraapi = new JiraUtil();
//   //         }
//        else
//                GlobalUtil.getCommonSettings().setbugTool("NO");

            if (url == null) {
                url = ConfigReader.getValue("BASE_URL");
                GlobalUtil.getCommonSettings().setUrl(url);
            }
            LogUtil.infoLog(getClass(),
                    "\n\n+===========================================================================================================+");
            LogUtil.infoLog(getClass(), " Suite started" + " at " + new Date());
            LogUtil.infoLog(getClass(), "Suite Execution For Web application on environment : " + executionEnv);
            LogUtil.infoLog(getClass(), "Suite Execution For Android mobile application on version: "
                    + GlobalUtil.getCommonSettings().getAndroidVersion());
            LogUtil.infoLog(getClass(),
                    "Suite Execution For RestAPI on URL: " + GlobalUtil.getCommonSettings().getRestURL());
            LogUtil.infoLog(getClass(),
                    "\n\n+===========================================================================================================+");

        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.errorLog(getClass(), "Common Settings not properly set may not run the scripts properly");
        }
    }

    @AfterTest
    public void onFinish()  {
        LogUtil.infoLog(getClass(), " suite finished" + " at " + new Date());
        LogUtil.infoLog(getClass(),
                "\n\n+===========================================================================================================+");
        extent.flush();
        extent.close();
        try {
            String filePathBackup = System.getProperty("user.dir") + File.separator + "ExecutionReports"
                    + File.separator + "HTMLReportsBackup";
            if (new File(filePathBackup).exists()) {

            } else {
                FileUtils.forceMkdir(new File(filePathBackup));
            }
            String filePath = System.getProperty("user.dir") + File.separator + "ExecutionReports" + File.separator
                    + "HTMLReports";
            if (new File(filePath).exists()) {
                File[] listOfFiles = new File(filePath).listFiles();
                if (listOfFiles.length > 0) {
                    for (int i = 0; i < listOfFiles.length; i++) {
                        if (listOfFiles[i].isFile()) {
                            Files.copy(listOfFiles[i], new File(filePathBackup + File.separator + tagName + ".html"));
                        } else if (listOfFiles[i].isDirectory()) {
                        }
                    }
                } else {
                    LogUtil.infoLog(RunCukesTest.class,
                            "Folder present but files will be backed up after 2nd execution.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        KeywordUtil.onExecutionFinish();
    }

}