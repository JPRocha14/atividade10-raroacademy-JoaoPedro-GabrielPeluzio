*** Settings ***

Resource    ../base.robot
Test Setup        Abrir App
Test Teardown     Teardown

*** Test Cases ***

CT001 - Deve permitir cadastrar um produto
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    E preenche os campos obrigatórios
    E clica no botão Save
    Então ele pode cadastrar um produto

CT002 - Não deve permitir cadastrar um produto sem informar a Description
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    E não preenche a Description
    E preenche o Amount e o Unit value
    E clica no botão Save
    Então ele não pode cadastrar um produto

CT003 - Não deve permitir cadastrar um produto sem informar o amount
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    E não preenche o Amount
    E preenche a Description e o Unit value
    E clica no botão Save
    Então ele não pode cadastrar um produto

CT004 - Não deve permitir cadastrar um produto sem informar o Unit value
    Dado que o cliente está na página inicial
    Quando ele clica no botão New para cadastrar produto
    E não preenche o Unit value
    E preenche a Description e o Amount
    E clica no botão Save
    Então ele não pode cadastrar um produto
