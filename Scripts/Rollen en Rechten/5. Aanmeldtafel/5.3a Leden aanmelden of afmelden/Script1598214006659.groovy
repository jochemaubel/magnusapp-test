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

if (GlobalVariable.Email == 'staff@schaakclub.nl') {
    WebUI.click(findTestObject('1. Menu/2. Club/Aanmeldtafel'))

    WebUI.click(findTestObject('4. Activiteiten/TEST clubavond vrijdag'))
} else {

WebUI.click(findTestObject('4. Activiteiten/TEST clubavond vrijdag'))

WebUI.click(findTestObject('4. Activiteiten/TEST clubavond vrijdag (sub)'))
}

WebUI.click(findTestObject('5. Aanmeldtafel/Aanmelden Leo (Lid)'))

WebUI.verifyTextPresent('Leo is aangemeld', false)

if (GlobalVariable.Email == 'staff@schaakclub.nl') {
    WebUI.callTestCase(findTestCase('2. Ledenoverzicht/Ga naar profiel Leo'), [:], FailureHandling.STOP_ON_FAILURE)

    WebUI.verifyTextPresent('dagen geleden', false)

    WebUI.click(findTestObject('1. Menu/2. Club/Aanmeldtafel'))

    WebUI.click(findTestObject('4. Activiteiten/TEST clubavond vrijdag'))
}

WebUI.click(findTestObject('5. Aanmeldtafel/Aanmelden Leo (Lid)'))

WebUI.verifyTextPresent('Leo is afgemeld', false)

WebUI.callTestCase(findTestCase('4. Activiteiten/Hidde aan- en afmelden'), [:], FailureHandling.STOP_ON_FAILURE)

if (GlobalVariable.Email == 'staff@schaakclub.nl') {
    WebUI.callTestCase(findTestCase('2. Ledenoverzicht/Ga naar profiel Leo'), [:], FailureHandling.STOP_ON_FAILURE)

    WebUI.verifyTextNotPresent('dagen geleden', false)
}

WebUI.closeBrowser()

