*** Settings ***
#onde configura os testes
Resource         ze_resources.robot
Resource         ze_variaveis.robot
Library          gerador_cpf.py
Test Setup       Acesse a página do Zé
#Test Teardown    Feche a página do Zé


*** Test Cases ***

Caso de teste 1: Criação de conta para um usuário novo
    [Documentation]    Esse teste valida a criação de uma nova conta válida
    [Tags]             Criação
    Aceite os cookies
    Valide a tela página inicial do Zé
    Clique em "Entrar"
    Insira nome
    Insira e-mail
    Insira uma senha válida
    Insira o cpf
    Insira o celular: ddd + número
    Insira a data de nacimento
    Confirme o checkbox de aceite de termos
    Clique no botão Criar conta com e-mail e senha
    Acesse o app