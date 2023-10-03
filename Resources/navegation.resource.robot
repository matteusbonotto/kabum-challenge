*** Settings ***
Library      SeleniumLibrary
Variables    ./locators.py

*** Keywords ***
Abrir pagina
    Open Browser    ${URL}    browser=${BROWSER}
Fechar o navegador
    Close Browser