package easypageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import easyDriverManager.DriverManager;

public class EasyBatchPage {
	WebDriver driver = DriverManager.getDriver();

	@FindBy(xpath = "//span[text()='Batch']")
	WebElement dashboardBatch;

	@FindBy(xpath = "//div[text()=' Manage Batch']")
	WebElement manageBatch;

	@FindBy(css = "button.p-button-danger.p-button.p-component.p-button-icon-only")
	//@FindBy(xpath = "//button[@class='p-button-danger p-button p-component p-button-icon-only']")
	WebElement disbaledDeleteIcon;

	@FindBy(css = "div.p-paginator-bottom.p-paginator.p-component.ng-star-inserted")
	//@FindBy(xpath = "//div[@class='p-paginator-bottom p-paginator p-component ng-star-inserted']")
	WebElement paginationEnabled;

	public void clickDashboardBatch() {
		dashboardBatch.click();
	}

	public String manageBatchgetText() {
		return manageBatch.getText();
	}

	public boolean deleteIconIsDisabled() {
		// WebElement deleteButton =
		// driver.findElement(By.cssSelector("your_css_selector_here"));
		boolean isDisabled = disbaledDeleteIcon.getAttribute("enabled") != null;
		return isDisabled;
	}

	public boolean isPaginationEnabled() {
		return paginationEnabled.isDisplayed();
	}

	public String getActualTitle() {
		return driver.getTitle();
	}

	public EasyBatchPage() {
		PageFactory.initElements(driver, this);
	}
}
