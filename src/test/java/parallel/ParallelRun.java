package parallel;

import org.testng.annotations.DataProvider;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
		plugin = {"pretty",
				"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
				"timeline:test-output-thread/"
				}, 
		monochrome = true,
		glue = { "parallel" },
		features = { 
				"src/test/resources/parallel/LandingPage.feature", 
				"src/test/resources/parallel/SearchPage.feature",
				"src/test/resources/parallel/AnalystSpeak.feature",
				"src/test/resources/parallel/Footer.feature",
				"src/test/resources/parallel/DecisionMines.feature",
				"src/test/resources/parallel/MediaAndAdvertising.feature",
				"src/test/resources/parallel/Company.feature",
				"src/test/resources/parallel/CybageTimes.feature",
				"src/test/resources/parallel/HiTech.feature",
				"src/test/resources/parallel/Newsroom.feature",
				"src/test/resources/parallel/TravelAndHospitality.feature"
				}
)

public class ParallelRun extends AbstractTestNGCucumberTests {
	@Override
	@DataProvider(parallel = true)
	public Object[][] scenarios() {
		return super.scenarios();
	}
}