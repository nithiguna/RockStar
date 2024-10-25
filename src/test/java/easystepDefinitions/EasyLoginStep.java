package easystepDefinitions;

import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import easyDriverManager.DriverManager;
import easypageObjects.EasyLoginPage;
import io.cucumber.core.logging.Logger;
import io.cucumber.java.en.*;
import utilities.ConfigFileReader;
import utilities.LoggerLoad;

public class EasyLoginStep {
	WebDriver driver = DriverManager.getDriver();
	EasyLoginPage loginObj = new EasyLoginPage();
	ConfigFileReader configFileReader = ConfigFileReader.getInstance();

	@Given("The Admin is on the login page of the LMS Portal")
	public void the_admin_is_on_the_login_page_of_the_lms_portal() {

		LoggerLoad.info("You are viewing the " + driver.getTitle() + " page.");
	}

	@When("The Admin enters the valid username and password")
	public void the_admin_enters_the_valid_username_and_password() {
		loginObj.username();
		loginObj.password();
		loginObj.login();
	}

	@Then("The Admin get navigated to home page and successfully logged in")
	public void the_admin_get_navigated_to_home_page_and_successfully_logged_in() {
		Assert.assertEquals(loginObj.getActualTitle(), configFileReader.getPageTitle("dashboardtitle"));
		LoggerLoad.info("You are viewing the " + driver.getTitle() + " page.");
	}

}
