
package utilities;

import org.openqa.selenium.WebDriver;

import easyDriverManager.DriverManager;
import easypageObjects.EasyBatchPage;
import easypageObjects.EasyLoginPage;
import io.cucumber.java.en.Given;
import utilities.ConfigFileReader;
import utilities.LoggerLoad;

public class BatchCommonStepdefinitio {
	WebDriver driver = DriverManager.getDriver();
	//EasyBatchPage batchObj=new EasyBatchPage();
	EasyLoginPage loginObj = new EasyLoginPage();
	ConfigFileReader configFileReader =  ConfigFileReader.getInstance();
	@Given("Admin is on the Dashboard Page after Login")
	public void admin_is_on_the_dashboard_page_after_login() {
		loginObj.username();
		loginObj.password();
		loginObj.login();
	}
}
