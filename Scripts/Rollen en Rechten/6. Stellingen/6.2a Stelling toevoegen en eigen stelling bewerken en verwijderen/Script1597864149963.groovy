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

WebUI.callTestCase(findTestCase('0. Algemeen/Inloggen'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('1. Menu/2. Club/Schaakstellingen'))

WebUI.click(findTestObject('0. Algemeen/FAB Toevoegen'))

WebUI.setText(findTestObject('6. Stellingen/Training titel'), 'NIEUWE stelling')

WebUI.click(findTestObject('6. Stellingen/Plak FEN-string'))

WebUI.setText(findTestObject('6. Stellingen/Input FEN-string'), 'k7/5ppp/8/8/8/8/5PPP/K7 w - - 0 1')

WebUI.click(findTestObject('0. Algemeen/Toepassenknop'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De stelling is opgeslagen.', false)

WebUI.click(findTestObject('6. Stellingen/NIEUWE stelling'))

WebUI.setText(findTestObject('6. Stellingen/Training titel'), ' (bewerkt)')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De stelling is opgeslagen.', false)

WebUI.mouseOver(findTestObject('6. Stellingen/BEWERKTE stelling'))

WebUI.click(findTestObject('6. Stellingen/Bewerkte stelling verwijderen'))

WebUI.click(findTestObject('0. Algemeen/Verwijderknop'))

WebUI.verifyTextPresent('De stelling is verwijderd.', false)

WebUI.closeBrowser()

