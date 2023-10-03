*** Settings ***
Documentation    Resource do cenário de teste 2
Library          SeleniumLibrary
Variables    ./locators.py

***Keyword***
Pesquisar por "${produto}"
    Input Text    ${search_bar}    ${produto}
Clicar em pesquisar
    Click Element    ${search_bar_button}
Verifica se lista de produtos relacionados e igual ${produto}
    Wait Until Element Contains    ${category_block}    ${produto}