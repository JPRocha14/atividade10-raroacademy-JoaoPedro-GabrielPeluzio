*** Settings ***

Resource    ../base.robot

*** Keywords ***

Espera o elemento e clica 
    [Arguments]    ${elemento}
    Wait Until Element Is Visible   ${elemento}
    Click Element        ${elemento}   


Espera o elemento e verifica 
    [Arguments]    ${elemento}
    Element Should Be Visible    ${elemento}    
    Element Should Be Enabled    ${elemento}
    

Espera o elemento e verifica o texto 
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Visible    ${elemento}  ${texto}

