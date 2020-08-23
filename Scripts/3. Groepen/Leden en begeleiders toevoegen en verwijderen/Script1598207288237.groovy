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

WebUI.click(findTestObject('3. Groepen/NIEUWE groep'))

WebUI.callTestCase(findTestCase('3. Groepen/Donald en Bessel aanklikken'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.verifyElementPresent(findTestObject('3. Groepen/Begeleider Donald Duck'), 0)

WebUI.verifyElementPresent(findTestObject('3. Groepen/Speler Bessel Bakker'), 0)

WebUI.callTestCase(findTestCase('3. Groepen/Donald en Bessel aanklikken'), [:], FailureHandling.STOP_ON_FAILURE)

WebUI.verifyTextNotPresent('Begeleiders', false)

WebUI.verifyElementPresent(findTestObject('3. Groepen/Speler Bessel Bakker'), 0)

WebUI.click(findTestObject('0. Algemeen/Back Button'))

