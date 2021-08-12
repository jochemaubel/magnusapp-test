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

WebUI.click(findTestObject('1. Menu/2. Club/GroepenMenu'))

WebUI.click(findTestObject('1. Menu/2. Club/Groepen/Competitiegroepen'))

WebUI.callTestCase(findTestCase('3. Groepen/Groep toevoegen'), [('Groepsnaam') : 'NIEUWE groep'], FailureHandling.STOP_ON_FAILURE)

WebUI.callTestCase(findTestCase('3. Groepen/Leden en begeleiders toevoegen en verwijderen'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.mouseOver(findTestObject('3. Groepen/NIEUWE groep'))

WebUI.click(findTestObject('3. Groepen/NIEUWE groep archiveren'))

WebUI.click(findTestObject('0. Algemeen/Archiverenknop'))

WebUI.click(findTestObject('0. Algemeen/Toon of Verberg gearchiveerde'))

WebUI.mouseOver(findTestObject('3. Groepen/NIEUWE groep'))

WebUI.click(findTestObject('3. Groepen/NIEUWE groep bewerken'))

WebUI.setText(findTestObject('3. Groepen/Input Groepsnaam'), ' (bewerkt)')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('De wijzigingen zijn opgeslagen', false)

