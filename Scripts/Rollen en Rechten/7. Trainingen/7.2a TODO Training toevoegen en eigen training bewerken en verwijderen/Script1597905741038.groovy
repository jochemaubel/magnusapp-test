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

WebUI.click(findTestObject('Menu/Club/Trainingen'))

WebUI.click(findTestObject('Algemeen/Toevoegen'))

WebUI.setText(findTestObject('Trainingen/Trainingsnaam input'), 'NIEUWE training')

WebUI.click(findTestObject('Algemeen/Toevoegenknop'))

not_run: WebUI.click(findTestObject('Trainingen/Voeg stelling toe'))

not_run: WebUI.click(findTestObject('Stellingen/Spaans stelling'))

not_run: WebUI.click(findTestObject('Algemeen/Opslaanknop'))

not_run: WebUI.verifyTextPresent('De wijzigingen zijn opgeslagen', false)

WebUI.click(findTestObject('Algemeen/Back Button'))

not_run: WebUI.mouseOver(findTestObject('Trainingen/NIEUWE training'))

not_run: WebUI.click(findTestObject('Trainingen/NIEUWE training verwijderen'))

not_run: WebUI.click(findTestObject('Algemeen/Verwijderknop'))

not_run: WebUI.verifyTextPresent('De training is verwijderd', false)

WebUI.closeBrowser()

