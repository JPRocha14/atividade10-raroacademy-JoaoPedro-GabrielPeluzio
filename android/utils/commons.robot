*** Settings ***

Resource    ../base.robot

*** Keywords ***

<<<<<<< HEAD
Espera o elemento e clica nele
    [Arguments]                      ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Espera o elemento e inputa um texto
    [Arguments]                        ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento} 
    Click Element                      ${elemento}
    Input Text                         ${elemento}    ${texto}

Espera o elemento e visualiza o conteúdo
    [Arguments]                        ${elemento}
    Wait Until Element Is Visible      ${elemento}

Espera o elemento e verifica conteúdo
    [Arguments]                        ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento}
    Element Should Be Visible          ${elemento}        ${texto}

Espera o elemento, verifica conteúdo e clica nele
    [Arguments]                        ${elemento}    ${texto}
    Wait Until Element Is Visible      ${elemento}
    Element Should Be Visible          ${elemento}        ${texto}
    Click Element                      ${elemento}

Espera o elemento e espera que ele esteja habilitado
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Element Should Be Enabled        ${elemento}

Verifica elemento
    [Arguments]    ${elemento}    
    FOR    ${counter}    IN RANGE    1    5
    ${STATUS}=    Run Keyword And Return Status    Element Should Be Visible    ${elemento}
        IF    '${STATUS}' == '${true}'
            Element Should Be Visible    ${elemento}
        END
    END
    IF    ${counter}>=5    Fail    Elemento nao encontrado

E há um produto cadastrado
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    E preenche os campos obrigatórios
    E clica no botão Save
    Então ele pode cadastrar um produto
=======
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

>>>>>>> 75c52c279913d9e67cfe80ee64a9d7a4d78209a2
