<img src="./assets/header.png"/>

# Projeto Challenge KABUM

## Avaliação:
**Exercícios de 1 a 5 estão dentro da pasta assets/Avaliação.docx**

**Exercício 6:**

## Tecnologias utilizadas
<div><img src="https://img.shields.io/badge/-Python%20(3.6.8)-gold?style=for-the-badge&logo=python&logoColor=black"></div> 

**Link para Download:** [Python](https://www.python.org/downloads/release/python-368/)

<div><img src="https://img.shields.io/badge/-Robot Framework (v6.1.1)-black?style=for-the-badge&logo=robotframework&logoColor=white"></div> 

**Link para Download:** [Robot Framework Getting Started](https://robotframework.org/?tab=1#getting-started)

<div><img src="https://img.shields.io/badge/-Selenium (v5.1.3)-grey?style=for-the-badge&logo=Selenium&logoColor=white"></div> 

**Instalador:** `pip install robotframework-seleniumlibrary`

<div><img src="https://img.shields.io/badge/-Chrome Web Driver (117)-blue?style=for-the-badge&logo=google-chrome&logoColor=white"></div> 

**Link para Download:** [chromedriver-win64.zip](https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/117.0.5938.132/win64/chromedriver-win64.zip)

- **Material de apoio:**
  - [Selenium Commands Guide](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Element%20Should%20Contain)
  - [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
  - [YouTube Video](https://www.youtube.com/watch?v=xoQwtceO-eI)

## Instruções para execução dos testes
Execute todos os testes em sequência

```
robot teste_kabum/kabum.robot
```
Execute por tags
```
robot -i cenario[n]  testes_kabum/kabum.robot
```

Execute por tags e redirecione o report para a pasta "Reports"
```
robot -i cenario[n] -d ./Reports  testes_kabum/kabum.robot
```

## Resumo do Projeto
No início foi um pouco complicado me acostumar com a indentação do "Robot", que seria necessário aplicar TAB ou 4 espaços, que é bem diferente do que estou acostumado com o cypress.io.
Consegui superar esse obstáculo após fazer o primeiro cenário funcionar corretamente.

Durante a pesquisa online, percebi a possibilidade de estruturar os testes com keywords, tornando-os mais legíveis e compreensíveis. Além disso, utilizei a função [Tags] para criar atalhos para os cenários, possibilitando testá-los individualmente ou em grupos quando possuem nomes semelhantes.

Este projeto foi desenvolvido em resposta ao desafio apresentado pela empresa Kabum, no qual era necessário aplicar automação de testes utilizando o Robot Framework.
Sem experiência prévia com esta ferramenta, me dediquei ao estudo e durante o desenvolvimento, fui aplicando boas práticas como Page Object no projeto. Tive alguns problemas com as variáveis, mas com o conhecimento prévio de Python adquirido na faculdade, consegui resolver, resultando na organização dos testes nos seguintes arquivos: um para os cenários de teste (kabum.robot)
e outro para os recursos: 
- Resource/cenario1.resource.robot
- Resource/cenario2.resource.robot
- Resource/cenario3.resource.robot
- Resource/locators.py<br>
- Resource/navegation.resource.robot)
  
ou seja:
  
- Variáveis
- Locators
- Keywords (Utilizados para criar os passos dos testes)

Todos os reports são armazenados na pasta Reports utilizando o comando -d como parâmetro de execução do teste.

Este desafio representa uma nova experiência adicionada ao meu arsenal curricular, demonstrando a capacidade de aprendizado e minhas capacidades.

Agradeço à Kabum pela oportunidade proporcionada e pela confiança depositada em meu trabalho.
