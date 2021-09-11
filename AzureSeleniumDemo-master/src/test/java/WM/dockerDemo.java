package WM;

import java.net.MalformedURLException;
import java.net.URL;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.BrowserType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.annotations.Test;

public class dockerDemo {
	@Test
	public void testApp() throws MalformedURLException, InterruptedException
	{
		DesiredCapabilities cap = new DesiredCapabilities();
		cap.setBrowserName(BrowserType.CHROME);
		WebDriver driver=new RemoteWebDriver(new URL("http://3.235.18.34:4444/wd/hub"), cap);
	   //driver.get("http://www.google.com");
		driver.get("https://www.freecrm.com/index.html");
		String pagetitle = driver.getTitle();
		System.out.println(pagetitle);
		//driver.findElement(By.name("q")).sendKeys("learn automation");
		//Thread.sleep(5000);
		driver.quit();
		
	}

}
