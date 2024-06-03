*** Settings ***

Resource    ../base.robot
Test Setup        Abrir App
Test Teardown     Teardown

*** Test Cases ***

CT001 - Deve permitir gerar um backup dos produtos
    Dado que o cliente está na página inicial
    Quando ele clica na opção de Menu
    E clica na opção de backup
    E clica para gerar um arquivo de backup
    Então o arquivo de backup é gerado

CT002 - Deve permitir enviar o arquivo de backup
    Dado que o cliente está na página inicial
    Quando ele clica na opção de Menu
    E clica na opção de backup
    E clica para gerar um arquivo de backup
    Então o arquivo de backup é gerado
    E o usuário pode exportar esse arquivo