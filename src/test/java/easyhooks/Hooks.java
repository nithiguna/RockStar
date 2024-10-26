package easyhooks;


import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;


import easyDriverManager.DriverManager;
import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import utilities.ConfigFileReader;


public class Hooks {
	
	ConfigFileReader configFileReader = ConfigFileReader.getInstance();
	WebDriver driver;
	@Before
	public void launchBrowser() throws Throwable {
		//configFileReader.loadProperties();
		WebDriver driver=DriverManager.initializeDriver("Chrome");
		driver.get(configFileReader.getLoginUrl());
		
		//driver.get("https://lms-frontend-hackathon-oct24-173fe394c071.herokuapp.com/login");
	}

	@AfterStep
	public void takeScreenshotOnFailure(Scenario scenario) {
		if (scenario.isFailed()) {
			TakesScreenshot ts = (TakesScreenshot) driver;
			byte[] src = ts.getScreenshotAs(OutputType.BYTES);
			scenario.attach(src, "image/png",scenario.getName());
					//"Screenshots");
		}
	}
	@After
	public void quitbrowser() throws InterruptedException {
		Thread.sleep(6000);
		DriverManager.getDriver().close();

	}

	
	

	
//
//	@After(order = 0)
//	public void quitbrowser() {
//		WebDriverManager.closeDriver();
//
//	}
	 
//	 @AfterStep
//	 public void getScreenshot(Scenario scenario) {
//		 if(scenario.isFailed()) {
//	            final byte[] screenshot = ((TakesScreenshot) WebdriverManager.getDriver()).getScreenshotAs(OutputType.BYTES);
//	            scenario.attach(screenshot, "image/png", scenario.getName());   
//	        }  
//	 }
//	
	
	
	
}
