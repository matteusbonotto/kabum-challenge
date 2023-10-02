*** Settings ***
Library    SeleniumLibrary
Resource    kabum.resource.robot

*** Test Cases ***
Funcionalidade: Validar login incorreto
    [Tags]    Cenario1
    Abrir pagina
    Clicar Em login
    Inserir usuario
    Inserir senha
    Clicar em entrar
    Espere pela mensagem
    A mensagem "E-mail, CPF, CNPJ ou senha incorretos" é igual a esperada
    Fechar o navegador

Funcionalidade: Buscar por iphone
    [Tags]    Cenario2
    Abrir pagina
    Pesquisar por "iphone"
    Clicar em pesquisar
    Verifica se lista de produtos relacionados e igual IPhone
    Fechar o navegador
    
Funcionalidade: Validar carrinho
    [Tags]    Cenario3
    Abrir pagina
    Selecionar o departamento
    Selecionar a categoria "TV"
    Clica no produto
    Adiciona um produto no carrinho
    Fechar o navegador