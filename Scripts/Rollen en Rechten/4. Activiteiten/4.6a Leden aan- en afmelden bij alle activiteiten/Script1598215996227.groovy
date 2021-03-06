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

WebUI.click(findTestObject('4. Activiteiten/TEST training'))

WebUI.click(findTestObject('0. Algemeen/Checkbox Daan'))

WebUI.verifyTextPresent('Daan is aangemeld', false)

WebUI.click(findTestObject('0. Algemeen/Checkbox Daan'))

WebUI.verifyTextPresent('Daan is afgemeld', false)

WebUI.click(findTestObject('4. Activiteiten/Meerknop Hidde'))

WebUI.click(findTestObject('4. Activiteiten/Listitem aanmelden-afmelden'))

WebUI.verifyTextPresent('Hidde is afgemeld', false)

WebUI.click(findTestObject('4. Activiteiten/Meerknop Hidde'))

WebUI.click(findTestObject('4. Activiteiten/Listitem aanmelden-afmelden'))

WebUI.verifyTextPresent('Hidde is aangemeld', false)

WebUI.closeBrowser()

