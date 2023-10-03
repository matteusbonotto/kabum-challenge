*** Settings ***
Documentation    Executa os cenarios de testes
Library          SeleniumLibrary
Resource         ../Resources/cenario1.resource.robot
Resource         ../Resources/cenario2.resource.robot
Resource         ../Resources/cenario3.resource.robot
Resource         ../Resources/navegation.resource.robot
Variables        ../Resources/locators.resource.robot

*** Test Cases ***
Funcionalidade: Validar login incorreto
    [Tags]    Cenario1
    Abrir pagina
    Clicar Em login
    Inserir usuario
    Inserir senha
    Clicar em entrar
    Espere pela mensagem
    A mensagem E-mail, CPF, CNPJ ou senha incorretos é igual a esperada
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
    Guardar nome do produto
    Adiciona um produto no carrinho
    A mensagem "Produto adicionado com sucesso no carrinho" é igual a esperada
    Verifica se o carrinho possui 1 produto
    Verifica se no carrinho o produto esta la
    Fechar o navegador