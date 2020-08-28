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

WebUI.click(findTestObject('1.2 Profiel/Gegevens'))

WebUI.setText(findTestObject('1.2 Profiel/Tussenvoegsel'), 'van')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', false)

WebUI.setText(findTestObject('1.2 Profiel/Postcode'), '1234AB')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Vul de straat in', true)

WebUI.verifyTextPresent('Vul het huisnummer in', true)

WebUI.verifyTextPresent('Vul de woonplaats in', true)

WebUI.click(findTestObject('0. Algemeen/Annuleerknop'))

WebUI.setText(findTestObject('1.2 Profiel/Begin Lidmaatschap'), '01-01-2013')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De gegevens zijn opgeslagen', true)

WebUI.refresh()

WebUI.click(findTestObject('1.2 Profiel/Gegevens'))

WebUI.verifyElementAttributeValue(findTestObject('1.2 Profiel/Tussenvoegsel'), 'value', 'van', 0)

WebUI.verifyElementAttributeValue(findTestObject('1.2 Profiel/Postcode'), 'value', '', 0)

WebUI.verifyElementAttributeValue(findTestObject('1.2 Profiel/Begin Lidmaatschap'), 'value', '01-01-2013', 0)

WebUI.doubleClick(findTestObject('1.2 Profiel/Tussenvoegsel'))

WebUI.sendKeys(findTestObject('1.2 Profiel/Tussenvoegsel'), Keys.chord(Keys.BACK_SPACE))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.click(findTestObject('1.2 Profiel/Begin Lidmaatschap'))

for (def i : (1..8)) {
    WebUI.sendKeys(findTestObject('1.2 Profiel/Begin Lidmaatschap'), Keys.chord(Keys.BACK_SPACE))
}

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

