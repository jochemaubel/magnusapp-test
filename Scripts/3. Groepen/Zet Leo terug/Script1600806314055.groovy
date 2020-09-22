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

WebUI.callTestCase(findTestCase('0. Algemeen/Inloggen als'), [('email') : 'staff@schaakclub.nl'], FailureHandling.STOP_ON_FAILURE)

WebUI.click(findTestObject('1. Menu/2. Club/Groepen/Externe competitie'))

WebUI.click(findTestObject('1. Menu/2. Club/Groepen/TEST magnus team'))

WebUI.click(findTestObject('0. Algemeen/Toon of Verberg gearchiveerde'))

WebUI.mouseOver(findTestObject('2. Ledenoverzicht/ListItem Leo (Lid)'))

WebUI.click(findTestObject('3. Groepen/Archiveer Leo'))

WebUI.click(findTestObject('0. Algemeen/Terugzetten knop'))

WebUI.callTestCase(findTestCase('0. Algemeen/Uitloggen'), [:], FailureHandling.STOP_ON_FAILURE)

