package easypageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import easyDriverManager.DriverManager;

public class EasyBatchPage {
	WebDriver driver= DriverManager.getDriver();
	
	
	@FindBy(xpath="//span[text()='Batch']")
	WebElement dashboardBatch;
	
	@FindBy(xpath="//div[text()=' Manage Batch']")
	WebElement manageBatch;
	
			
	public void clickDashboardBatch()
	{
		dashboardBatch.click();
	}
	public String manageBatchgetText()
	{
		return manageBatch.getText();
	}
	
	public String getActualTitle() {
		return driver.getTitle();
	}
	
	public EasyBatchPage() {
		PageFactory.initElements(driver, this);
	}
}
