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

WebUI.callTestCase(findTestCase('Setup/Inloggen'), [('url') : ''], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('Menu/Profiel map/Profiel'))

WebUI.click(findTestObject('Menu/Profiel map/Member'))

WebUI.click(findTestObject('Ledengegevens/Gegevens'))

WebUI.setText(findTestObject('Ledengegevens/Email-adres'), 'test@schaakclub.nl')

WebUI.click(findTestObject('Algemeen/Opslaanknop'))

WebUI.refresh()

WebUI.click(findTestObject('Ledengegevens/Gegevens'))

WebUI.verifyElementAttributeValue(findTestObject('Ledengegevens/Email-adres'), 'value', 'test@schaakclub.nl', 0)

WebUI.doubleClick(findTestObject('Ledengegevens/Email-adres'))

WebUI.sendKeys(findTestObject('Ledengegevens/Email-adres'), 'Keys.BACKSPACE')

WebUI.click(findTestObject('Algemeen/Opslaanknop'))

WebUI.closeBrowser()

