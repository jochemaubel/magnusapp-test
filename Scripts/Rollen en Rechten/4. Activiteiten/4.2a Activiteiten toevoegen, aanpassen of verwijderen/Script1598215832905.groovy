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

WebUI.click(findTestObject('1. Menu/2. Club/Activiteiten'))

WebUI.verifyElementPresent(findTestObject('4. Activiteiten/Bewerk TEST clubavond vrijdag'), 0)

WebUI.verifyElementPresent(findTestObject('4. Activiteiten/Verwijder TEST clubavond vrijdag'), 0)

WebUI.click(findTestObject('0. Algemeen/FAB Toevoegen'), FailureHandling.STOP_ON_FAILURE)

WebUI.setText(findTestObject('4. Activiteiten/Input Activiteitnaam'), 'NIEUWE activiteit')

WebUI.click(findTestObject('4. Activiteiten/Input Type activiteit'))

WebUI.click(findTestObject('4. Activiteiten/Type activitiveit Interne competitie'))

WebUI.setText(findTestObject('4. Activiteiten/Input Starttijd'), '19:00')

WebUI.click(findTestObject('4. Activiteiten/Tab Groepen'))

WebUI.click(findTestObject('4. Activiteiten/Groep D1'))

WebUI.click(findTestObject('0. Algemeen/Toevoegenknop'))

WebUI.verifyTextPresent('NIEUWE activiteit is toegevoegd', false)

WebUI.mouseOver(findTestObject('4. Activiteiten/NIEUWE activiteit'))

WebUI.click(findTestObject('4. Activiteiten/NIEUWE activiteit bewerken'))

WebUI.setText(findTestObject('4. Activiteiten/Input Activiteitnaam'), ' (bewerkt)')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('NIEUWE activiteit (bewerkt) is aangepast', false)

WebUI.click(findTestObject('4. Activiteiten/NIEUWE activiteit verwijderen'))

WebUI.click(findTestObject('0. Algemeen/Verwijderknop'))

WebUI.verifyTextPresent('NIEUWE activiteit (bewerkt) is verwijderd', false)

WebUI.closeBrowser()

