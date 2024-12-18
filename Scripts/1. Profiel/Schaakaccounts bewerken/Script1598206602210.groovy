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

WebUI.click(findTestObject('1. Profiel/Accounts'))

WebUI.setText(findTestObject('1. Profiel/Chesscom naam'), 'ChessComAccount')

WebUI.setText(findTestObject('1. Profiel/Chesskid naam'), 'ChessKidAccount')

WebUI.setText(findTestObject('1. Profiel/Lichess naam'), 'LichessAccount')

not_run: WebUI.setText(findTestObject('1. Profiel/Lichess token'), 'LichessToken')

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

WebUI.refresh()

WebUI.click(findTestObject('1. Profiel/Accounts'))

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Chesscom naam'), 'value', 'ChessComAccount', 0)

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Chesskid naam'), 'value', 'ChessKidAccount', 0)

WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Lichess naam'), 'value', 'LichessAccount', 0)

not_run: WebUI.verifyElementAttributeValue(findTestObject('1. Profiel/Lichess token'), 'value', 'LichessToken', 0)

WebUI.doubleClick(findTestObject('1. Profiel/Chesscom naam'))

WebUI.sendKeys(findTestObject('1. Profiel/Chesscom naam'), Keys.chord(Keys.BACK_SPACE))

WebUI.doubleClick(findTestObject('1. Profiel/Chesskid naam'))

WebUI.sendKeys(findTestObject('1. Profiel/Chesskid naam'), Keys.chord(Keys.BACK_SPACE))

not_run: WebUI.doubleClick(findTestObject('1. Profiel/Lichess token'))

not_run: WebUI.sendKeys(findTestObject('1. Profiel/Lichess token'), Keys.chord(Keys.BACK_SPACE))

WebUI.doubleClick(findTestObject('1. Profiel/Lichess naam'))

WebUI.sendKeys(findTestObject('1. Profiel/Lichess naam'), Keys.chord(Keys.BACK_SPACE))

WebUI.click(findTestObject('0. Algemeen/Opslaanknop'))

