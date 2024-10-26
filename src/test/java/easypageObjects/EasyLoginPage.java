package easypageObjects;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import easyDriverManager.DriverManager;

public class EasyLoginPage {
	WebDriver driver= DriverManager.getDriver();
	
	@FindBy(xpath="//input[@id='username']")
	WebElement username;
	
	@FindBy(xpath="//input[@id='password']")
	WebElement password;
	
	@FindBy(xpath="//button[@id='login']")
	WebElement login;
	
	public void username()
	{
		//username.clear();
		username.sendKeys("Sdet@gmail.com");
		
	}
	public String get_username()
	{
		return username.getText();
	}
	
	public void password()
	{
		//username.clear();
		password.sendKeys("LmsHackathon@2024");
		
	}
	
	public String get_password()
	{
		
		
		return password.getText();
	}
	
	public void login()
	{
		login.click();
	}
	public String getActualTitle() {
		return driver.getTitle();
	}
	
	public EasyLoginPage() {
		PageFactory.initElements(driver, this);
	}

}