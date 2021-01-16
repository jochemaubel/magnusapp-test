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

WebUI.setText(findTestObject('1. Profiel/Tussenvoegsel'), 'van')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', false)

WebUI.setText(findTestObject('1. Profiel/School'), 'Duckschool')

WebUI.click(findTestObject('1. Profiel/Status lidmaatschap'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

WebUI.refresh()

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Tussenvoegsel'), 'value', 'van', 0)

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/School'), 'value', 'Duckschool', 0)

WebUI.doubleClick(findTestObject('1. Profiel/Tussenvoegsel'))

WebUI.sendKeys(findTestObject('1. Profiel/Tussenvoegsel'), Keys.chord(Keys.BACK_SPACE))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

WebUI.mouseOver(findTestObject('1. Profiel/School'))

WebUI.click(findTestObject('1. Profiel/School - Verwijder'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

