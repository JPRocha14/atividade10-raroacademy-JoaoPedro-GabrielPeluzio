*** Settings ***
Resource    ../base.robot

Test Setup     Abrir App
Test Teardown    Teardown 


*** Test Cases ***
CT001 - todas funcionalidades estao funcionando 
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade import
    Entao ele pode escolher o que quer importar 
