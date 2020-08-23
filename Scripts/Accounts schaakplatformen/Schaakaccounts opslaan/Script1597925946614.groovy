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

WebUI.openBrowser('')

WebUI.navigateToUrl('https://devapp.magnusapp.nl/activities')

WebUI.setText(findTestObject('Page_Magnus Club App/input_E-mailadres_email'), 'jochem.aubel@gmail.com')

WebUI.setEncryptedText(findTestObject('Page_Magnus Club App/input_Wachtwoord_password'), 'p20GsOAi2SBlgFd1BQ5orQ==')

WebUI.sendKeys(findTestObject('Page_Magnus Club App/input_Wachtwoord_password'), Keys.chord(Keys.ENTER))

WebUI.click(findTestObject('Menu/Persoonlijk/Activiteiten'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/a_Koen'))

WebUI.click(findTestObject('Object Repository/Page_Magnus Club App/span_Accounts'))

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Chesscom naam'), 'value', 'koentjemeloentje_030', 
    0)

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Chesskid naam'), 'value', 'Magnus-L-Koen', 0)

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Lichess naam'), 'value', 'koenie131', 0)

WebUI.doubleClick(findTestObject('Page_Magnus Club App/Lichess naam'))

WebUI.sendKeys(findTestObject('Page_Magnus Club App/Lichess naam'), 'pataje')

WebUI.click(findTestObject('Page_Magnus Club App/button_Opslaan'))

WebUI.refresh()

WebUI.click(findTestObject('Page_Magnus Club App/span_Accounts'))

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Chesscom naam'), 'value', 'koentjemeloentje_030', 
    0)

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Chesskid naam'), 'value', 'Magnus-L-Koen', 0)

WebUI.verifyElementAttributeValue(findTestObject('Page_Magnus Club App/Lichess naam'), 'value', 'pataje', 0)

