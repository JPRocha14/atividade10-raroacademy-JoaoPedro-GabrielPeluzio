*** Settings ***
Resource    ../base.robot

Test Setup     Abrir App
Test Teardown    Teardown 


*** Test Cases ***    
CT001 - todas funcionalidades estao funcionando 
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade export
    Entao ele pode verificar e utilizar a funcionalidades


CT002 - gerar um export
    Dado que o usuario esta na paginal inicial
    E criou um produto 
    E teve entrada e saida de produtos 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade export
    E clicou no botao de gerar um export
    Entao ele criou um arquivo 

CT003 - enviar um export
    Dado que o usuario esta na paginal inicial 
    # E criou um produto 
    # E teve entrada e saida de produtos 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade export
    E clicou no botao de gerar export
    E clicou no botao de enviar 
    Entao ele enviou um arquivo




