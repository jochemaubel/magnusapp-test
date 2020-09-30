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

WebUI.click(findTestObject('1. Profiel/Gegevens'))

WebUI.click(findTestObject('1. Profiel/Button ouder toevoegen'))

WebUI.setText(findTestObject('1. Profiel/Dropdown ouder selecteren'), 'Donald Duck')

WebUI.click(findTestObject('1. Profiel/Listitem Ouder Donald Duck'))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.verifyTextPresent('Donald Duck is toegevoegd', false)

WebUI.click(findTestObject('2. Ledenoverzicht/ListItem Donald Duck'))

WebUI.verifyElementPresent(findTestObject('2. Ledenoverzicht/Profielpagina Donald'), 0)

WebUI.click(findTestObject('0. Algemeen/Back Button'))

WebUI.mouseOver(findTestObject('2. Ledenoverzicht/ListItem Donald Duck'))

WebUI.click(findTestObject('1. Profiel/Verwiider ouder'))

WebUI.click(findTestObject('0. Algemeen/Verwijderknop'))

WebUI.verifyTextPresent('Donald Duck is verwijderd', false)

WebUI.closeBrowser()

