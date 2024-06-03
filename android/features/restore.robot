*** Settings ***

Resource    ../base.robot
Test Setup        Abrir App
Test Teardown     Teardown

*** Test Cases ***

CT001 - Deve permitir selecionar arquivo para restaurar
    Dado que o cliente está na página inicial
    Quando ele clica na opção de Menu
    E clica na opção de restore
    E clica na opção de SELECT FILE 
    Então ele pode selecionar arquivo a ser restaurado

CT002 - Deve permitir o usuário restaurar o arquivo de backup
    Dado que o cliente está na página inicial
    E o backup dos arquivos já foi realizado
    E clica na opção de restore
    E clica na opção de SELECT FILE 
    E clica na opção de estoque
    E clica na opção de realizar o backup do arquivo baixado
    Então deve ser possível realizar a restauração