*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${URL}               https://kabum.com.br
${BROWSER}    chrome
${button_login}      //*[@id="linkLoginHeader"]
${input_user}        //*[@id="login"]
${input_password}    //*[@id="password"]
${button_signin}     //*[@id="__next"]/main/div/div/div/form/div[3]/button
${feedback_login}    //*[@id="__next"]/main/div/div/div/form/div[3]/div/span/p
${search_bar}        //*[@id="input-busca"]
${search_bar_button}    //*[@id="barraBuscaKabum"]/div/form/button
${category_block}    //*[@id="blocoCategoriasListagem"]/span[2]
${departaments}    //*[@id="__next"]/header/div[2]/div/nav/div[1]
${image_product}       //*[@id="listing"]/div[3]/div/div/div[2]/div/main/div[1]/a/img
${button_buy_product}    //*[@id="blocoValores"]/div[2]/div[2]/button
${feedback_buy_product}    //*[@id="__next"]/div[1]/div[1]/div/div/div/div[2]
${cart_count}    //*[@id="linkCarrinhoHeader"]/div/span

*** Keywords ***
# Navegação
Abrir pagina
    Open Browser    ${URL}    browser=${BROWSER}
Fechar o navegador
    Close Browser

# Elementos do cenário 1
Clicar Em login
    Click Element    ${button_login}
Inserir usuario
    Input Text    ${input_user}   teste@teste.com 
Inserir senha
    Input Text    ${input_password}    123456
Clicar em entrar
    Click Element    ${button_signin}
Espere pela mensagem
    Wait Until Element Is Visible    xpath=${feedback_login}
A mensagem "${feedback}" é igual a esperada
    Element Should Contain    xpath=${feedback_login}    ${feedback}


# Elementos do cenário 2
Pesquisar por "${produto}"
    Input Text    ${search_bar}    ${produto}
Clicar em pesquisar
    Click Element    ${search_bar_button}
Verifica se lista de produtos relacionados e igual ${produto}
    Wait Until Element Contains    ${category_block}    ${produto}

# Elementos do cenário 3
Selecionar o departamento
    Mouse Over    ${departaments}
Selecionar a categoria ${categoria}
    Click Element   //*[@id="__next"]/header/div[2]/div[contains(text(),'TV')]
#     Click Element    
Clica no produto
    Click Element    ${image_product}
Adiciona um produto no carrinho
     Click Element    ${button_buy_product}
# Verifica se o carrinho possui 1 produto
# #     Element Should Be Visible    ${feedback_buy_product}

