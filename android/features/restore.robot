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