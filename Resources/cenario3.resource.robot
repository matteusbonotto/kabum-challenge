*** Settings ***
Documentation  Resource do cenário de teste 3
Library        SeleniumLibrary
Variables    ./locators.py

***Keywords***
Selecionar o departamento
    Mouse Over    ${departaments}
Selecionar a categoria ${categoria}
     Click Element    xpath=${Category} 
Clica no produto
    Click Element    ${image_product}
Guardar nome do produto
    ${product_name}    Get Text    ${get_product_name}
Adiciona um produto no carrinho
    Click Element    ${button_add_cart}
A mensagem "${feedback_message_cart}" é igual a esperada
    Wait Until Element Contains    xpath=${feedback_add_cart}    ${feedback_message_cart}
Verifica se o carrinho possui 1 produto
    Wait Until Element Is Visible   ${cart_count}    1
Verifica se no carrinho o produto esta la
    Element Should Contain    ${product_title}    ${product_name}
