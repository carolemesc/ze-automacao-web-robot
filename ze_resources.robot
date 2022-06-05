*** Settings ***
Library        SeleniumLibrary
Library        gerador_cpf.py
Library        nome_numero_aleatorio.py
Library        telefone.py
Resource       ze_variaveis.robot


*** Keywords ***
Acesse a página do Zé
    Open Browser                           browser=${browser}
    Go To                                  url=${url}
    Page Should Contain Element            id=${id_botão_entrar_pag_inicial}
    Title Should Be                        title=${title_Ze}
    Delete All Cookies

Feche a página do Zé
    Close Browser

Aceite os cookies
    Wait Until Element Is Visible          id=${id_botão_entrar_pag_inicial}
    Wait Until Element Is Visible          id=${id_aceitar_cookies_pag_inicial}
    Wait Until Element Is Visible          xpath=${xpath_tela_aceite_de_termos}
    Click Button                           locator=${id_aceitar_cookies_pag_inicial}

Valide a tela página inicial do Zé
    Element Should Be Visible              id=${id_botão_entrar_pag_inicial}
    Element Should Be Visible              class=${class_logo_Ze_pag_inicial}
    Wait Until Element Is Visible          id=${id_inserir_endereco_pag_inicial}

Clique em "Entrar"
    Click Element                          id=${id_botão_entrar_pag_inicial}
    Wait Until Element Is Visible          id=${id_botao_voltar_tela_criar_conta}
    Wait Until Element Is Visible          id=${id_botao_entrar_em_entrar_na_conta}
    Wait Until Element Is Visible          xpath=${xpath_botao_quero_criar_conta}
    Click Element                          xpath=${xpath_botao_quero_criar_conta}

Insira nome
    Input Text                             id=${id_inserir_nome_criar}                       ${nome} ${sobrenome}
    

Insira e-mail
    ${email}=                              Random Generator
    Input Text                             id=${id_inserir_email_criar}                      ${email}@yopmail.com    

Insira uma senha válida
    Input Text                             id=${id_inserir_senha_criar}                      ${senha}
    Click Element                          xpath=//button[contains(@aria-label,'Mostrar senha')]
    
Insira o cpf
    ${cpf}=                                Generate Cpf
    Input Text                             id=${id_inserir_cpf_criar}                        ${cpf}

Insira o celular: ddd + número
    ${celular}=                            Numero Telefone
    Input Text                             id=${id_inserir_telefone_criar}                   ${celular}

Insira a data de nacimento
    Input Text                             id=${id_inserir_telefone_nascimento_criar}        ${nascimento}

Confirme o checkbox de aceite de termos
    Maximize Browser Window
    Wait Until Element Is Visible          id=${id_aceite_termos_criar}
    Select Checkbox                        id=${id_aceite_termos_criar}
    Checkbox Should Be Selected            id=${id_aceite_termos_criar}

Clique no botão Criar conta com e-mail e senha
    Checkbox Should Be Selected            id=${id_aceite_termos_criar}
    Checkbox Should Not Be Selected        id=${id_marketing_criar}
    Wait Until Element Is Visible          id=${id_tenho_conta_criar}
    Wait Until Element Is Visible          id=${id_info_criar}
    Wait Until Element Is Visible          id=${id_botao_criar_conta}
    Page Should Contain Button             id=${id_botao_criar_conta}
    Click Button                           id=${id_botao_criar_conta}

Acesse o app
    Wait Until Element Is Visible          id=confirm-phone-link-validate-later
    Click Element                          id=confirm-phone-link-validate-later

Valide o acesso
    Wait Until Element Is Visible          xpath=//div[@class='css-1hmmvue'][contains(.,'Olá, ${nome}')]
    Element Should Be Visible              id=${id_botão_entrar_pag_inicial}
    Element Should Be Visible              class=${class_logo_Ze_pag_inicial}
    Wait Until Element Is Visible          id=${id_inserir_endereco_pag_inicial}