*** Settings ***
Resource    ../base.robot

Test Setup     Abrir App
Test Teardown    Teardown 


*** Test Cases ***
CT001 - reportar inventario
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade Report
    Entao ele pode reportar o inventario

CT002 - entrada no estoque com sucesso
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade Report
    Entao ele pode reportar as entradas caso tenha preenchido as datas

CT003 - saida no estoque com sucesso
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade Report
    Entao ele pode reportar as saidas caso tenha preenchido as datas

CT004 - entrada no estoque sem sucesso
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade Report
    Entao ele nao pode reportar as entradas caso nao tenha preenchido as datas

CT005 - saida no estoque sem sucesso
    Dado que o usuario esta na paginal inicial 
    E que o usuario clicou no botao menu 
    E que escolheu a funcionalidade Report
    Entao ele nao pode reportar as saidas caso nao tenha preenchido as datas