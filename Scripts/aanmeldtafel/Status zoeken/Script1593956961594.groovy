import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.callTestCase(findTestCase('Inloggen/Inloggen Hakraai'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/span_Test clubavond'))

WebUI.click(findTestObject('Page_Magnus Club App/Status drop down'))

WebUI.sendKeys(findTestObject('Object Repository/Page_Magnus Club App/input_Registratie_mui-autocomplete-9694'), Keys.chord(
        Keys.DOWN, Keys.DOWN))

WebUI.setText(findTestObject('Object Repository/Page_Magnus Club App/input_Registratie_mui-autocomplete-9694'), Keys.chord(
        Keys.DOWN, Keys.DOWN))

WebUI.verifyTextPresent('Koen Aubel', true)

WebUI.verifyTextNotPresent('Hidde Kraaijpoel', true)

WebUI.verifyTextNotPresent('Daan Aubel', true)

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/li_Afwezig'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/svg_Registratie_MuiSvgIcon-root MuiSvgIcon-_79e805'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/input_Registratie_mui-autocomplete-85883'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/svg_Registratie_MuiSvgIcon-root MuiSvgIcon-_79e805'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/input_Registratie_mui-autocomplete-85883'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/li_Nog niet gezien'))

WebUI.closeBrowser()

