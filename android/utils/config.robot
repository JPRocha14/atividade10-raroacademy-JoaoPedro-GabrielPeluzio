*** Settings ***
Resource    ../base.robot

<<<<<<< HEAD
Resource    ../base.robot


=======
>>>>>>> 75c52c279913d9e67cfe80ee64a9d7a4d78209a2
*** Variables ***
${ANDROID_AUTOMATION_NAME}        UIAutomator2
${ANDROID_PLATFORM_NAME}          Android
${ANDROID_PLATFORM_VERSION}       11
${ANDROID_APP_ACTIVITY}           .Inicio
${ANDROID_APP_PACKAGE}            br.com.pztec.estoque



*** Keywords ***

Abrir App
    Open Application    http://127.0.0.1:4723    automationName=${ANDROID_AUTOMATION_NAME}    
    ...    platformName=${ANDROID_PLATFORM_NAME}    
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}    appActivity=${ANDROID_APP_ACTIVITY}    
<<<<<<< HEAD
    ...    appPackage=${ANDROID_APP_PACKAGE}        autoGrantPermissions=${true}
=======
    ...    appPackage=${ANDROID_APP_PACKAGE}    autoGrantPermissions=${true}
>>>>>>> 75c52c279913d9e67cfe80ee64a9d7a4d78209a2

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications