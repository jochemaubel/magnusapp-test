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

WebUI.callTestCase(findTestCase('Setup/Inloggen'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('Menu/Club/Schaakstellingen map/Schaakstellingen'))

WebUI.mouseOver(findTestObject('Menu/Club/Schaakstellingen map/Spaans stelling'))

WebUI.verifyElementNotPresent(findTestObject('Menu/Club/Schaakstellingen map/Tooltip'), 0)

WebUI.click(findTestObject('Menu/Club/Schaakstellingen map/Stelling bekijken'))

WebUI.verifyElementPresent(findTestObject('Menu/Club/Schaakstellingen map/Tooltip'), 0)

WebUI.verifyTextNotPresent('Bewerk stelling', false)

WebUI.verifyTextNotPresent('Verwijder', false)

WebUI.mouseOver(findTestObject('Menu/Club/Schaakstellingen map/TEST stelling'))

WebUI.click(findTestObject('Menu/Club/Schaakstellingen map/Stelling bewerken'))

WebUI.verifyTextPresent('Bewerk stelling', false)

WebUI.click(findTestObject('Algemeen/Annuleerknop'))

WebUI.mouseOver(findTestObject('Menu/Club/Schaakstellingen map/TEST stelling'))

WebUI.click(findTestObject('Menu/Club/Schaakstellingen map/Stelling verwijderen'))

WebUI.verifyTextPresent('verwijderen', false)

