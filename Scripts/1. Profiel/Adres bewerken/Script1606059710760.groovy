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

WebUI.click(findTestObject('1. Profiel/Gegevens'))

WebUI.setText(findTestObject('1. Profiel/Postcode'), '1234AB')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Vul de straat in', true)

WebUI.verifyTextPresent('Vul het huisnummer in', true)

WebUI.verifyTextPresent('Vul de woonplaats in', true)

WebUI.setText(findTestObject('1. Profiel/Straat'), 'Koningsstraat')

WebUI.setText(findTestObject('1. Profiel/Huisnummer'), '64')

WebUI.setText(findTestObject('1. Profiel/Woonplaats'), 'Queensland')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Het adres is opgeslagen', true)

WebUI.refresh()

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Straat'), 'value', 'Koningsstraat', 0)

WebUI.setText(findTestObject('1. Profiel/Straat'), 'x')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Het adres is opgeslagen', true)

WebUI.refresh()

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Straat'), 'value', 'Koningsstraatx', 0)

WebUI.doubleClick(findTestObject('1. Profiel/Straat'))

WebUI.sendKeys(findTestObject('1. Profiel/Straat'), Keys.chord(Keys.BACK_SPACE))

WebUI.doubleClick(findTestObject('1. Profiel/Huisnummer'))

WebUI.sendKeys(findTestObject('1. Profiel/Huisnummer'), Keys.chord(Keys.BACK_SPACE))

WebUI.doubleClick(findTestObject('1. Profiel/Postcode'))

WebUI.sendKeys(findTestObject('1. Profiel/Postcode'), Keys.chord(Keys.BACK_SPACE))

WebUI.doubleClick(findTestObject('1. Profiel/Woonplaats'))

WebUI.sendKeys(findTestObject('1. Profiel/Woonplaats'), Keys.chord(Keys.BACK_SPACE))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Het adres is opgeslagen', true)

WebUI.refresh()

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Straat'), 'value', '', 0)

