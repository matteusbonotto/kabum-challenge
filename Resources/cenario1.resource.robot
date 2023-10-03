*** Settings ***
Documentation   Resource do cenário de teste 1
Library         SeleniumLibrary
Variables    ./locators.py

***Keywords***
Clicar Em login
    Click Element     ${button_login}
Inserir usuario
    Input Text        ${input_user}    teste@teste.com 
Inserir senha
    Input Text        ${input_password}    123456
Clicar em entrar
    Click Element     ${button_signin}
Espere pela mensagem
    Wait Until Element Is Visible    xpath=${feedback_login}
A mensagem ${feedback} é igual a esperada
    Element Should Contain    xpath=${feedback_login}    ${feedback}