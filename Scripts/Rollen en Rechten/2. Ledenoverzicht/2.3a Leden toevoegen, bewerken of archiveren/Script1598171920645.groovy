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

WebUI.callTestCase(findTestCase('0. Algemeen/Inloggen'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('1. Menu/2. Club/Ledenoverzicht'))

WebUI.click(findTestObject('0. Algemeen/FAB Toevoegen'))

WebUI.setText(findTestObject('2. Ledenoverzicht/Voornaam input'), 'AAA')

WebUI.setText(findTestObject('2. Ledenoverzicht/Achternaam input'), 'BBB')

WebUI.click(findTestObject('0. Algemeen/Toevoegenknop'))

WebUI.verifyTextPresent('AAA BBB is toegevoegd', false)

WebUI.click(findTestObject('1. Profiel/Rollen - Lid'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De rollen zijn opgeslagen', false)

WebUI.click(findTestObject('0. Algemeen/Back Button'))

WebUI.verifyTextPresent('AAA BBB', false)

WebUI.mouseOver(findTestObject('2. Ledenoverzicht/AAA BBB'))

WebUI.click(findTestObject('0. Algemeen/Archiveren item in lijst'), FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('0. Algemeen/Archiverenknop'))

WebUI.verifyTextPresent('AAA BBB is gearchiveerd', false)

WebUI.mouseOver(findTestObject('2. Ledenoverzicht/ListItem Aad (Aanmeldtafel)'))

WebUI.click(findTestObject('0. Algemeen/Aanpassen item in lijst'), FailureHandling.STOP_ON_FAILURE)

WebUI.verifyElementPresent(findTestObject('1. Profiel/Gegevens'), 0)

WebUI.closeBrowser()

