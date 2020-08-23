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

WebUI.callTestCase(findTestCase('Inloggen/Inloggen Jochem'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('Menu/Profiel map/Profiel'))

WebUI.click(findTestObject('Menu/Profiel Jochem/Koen'))

WebUI.click(findTestObject('Ledengegevens/Gegevens'))

WebUI.setText(findTestObject('Page_Magnus Club App/input_E-mailadres_email'), 'koenaubel@gmail.com')

WebUI.click(findTestObject('Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

WebUI.setText(findTestObject('Page_Magnus Club App/input_Postcode_postalcode'), '3544AB')

WebUI.click(findTestObject('Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Vul de straat in', true)

WebUI.verifyTextPresent('Vul het huisnummer in', true)

WebUI.verifyTextPresent('Vul de woonplaats in', true)

WebUI.click(findTestObject('Algemeen/Annuleerknop'))

WebUI.setText(findTestObject('Object Repository/Page_Magnus Club App/input_Begin lidmaatschap_startDate'), '01-01-2013')

WebUI.click(findTestObject('Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

WebUI.refresh()

WebUI.click(findTestObject('Ledengegevens/Gegevens'))

WebUI.verifyElementAttributeValue(findTestObject('Ledengegevens/Email-adres'), 'value', 'koenaubel@gmail.com', 0)

WebUI.verifyElementAttributeValue(findTestObject('Ledengegevens/Begin Lidmaatschap'), 'value', '01-01-2013', 0)

WebUI.closeBrowser()

