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

WebUI.click(findTestObject('1. Menu/2. Club/Groepen/Competitiegroepen'))

WebUI.click(findTestObject('0. Algemeen/Archiveren item in lijst'), FailureHandling.STOP_ON_FAILURE)

WebUI.verifyTextNotPresent('Archiveer', false)

WebUI.click(findTestObject('0. Algemeen/Back Button'))

WebUI.verifyElementNotPresent(findTestObject('0. Algemeen/FAB Toevoegen'), 0)

WebUI.click(findTestObject('0. Algemeen/Aanpassen item in lijst'), FailureHandling.STOP_ON_FAILURE)

WebUI.verifyTextNotPresent('Wijzig groepsinstellingen', false)

