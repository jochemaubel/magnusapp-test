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

WebUI.callTestCase(findTestCase('0. Algemeen/Inloggen'), [('url') : ''], FailureHandling.STOP_ON_FAILURE)

WebUI.callTestCase(findTestCase('0. Algemeen/Ga naar trainingen'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('0. Algemeen/FAB Toevoegen'))

WebUI.setText(findTestObject('7. Trainingen/Trainingsnaam input'), 'NIEUWE training')

WebUI.click(findTestObject('0. Algemeen/Toevoegenknop'))

WebUI.click(findTestObject('7. Trainingen/Tab stellingen'))

WebUI.click(findTestObject('7. Trainingen/Voeg stelling toe'))

WebUI.click(findTestObject('7. Trainingen/Checkbox Stelling 3'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De wijzigingen zijn opgeslagen', false)

WebUI.click(findTestObject('0. Algemeen/Back Button'))

WebUI.mouseOver(findTestObject('7. Trainingen/NIEUWE training'))

WebUI.click(findTestObject('7. Trainingen/NIEUWE training bewerken'))

WebUI.setText(findTestObject('7. Trainingen/Trainingsnaam input'), ' (bewerkt)')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De training is aangepast', false)

WebUI.mouseOver(findTestObject('7. Trainingen/NIEUWE training'))

WebUI.click(findTestObject('7. Trainingen/NIEUWE training verwijderen'))

WebUI.click(findTestObject('0. Algemeen/Verwijderknop'))

WebUI.verifyTextPresent('De training is verwijderd', false)

WebUI.closeBrowser()

