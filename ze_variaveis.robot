*** Settings ***
Library        SeleniumLibrary
Library        gerador_cpf.py

*** Variables ***
${browser}    chrome
${url}        https://www.ze.delivery

${nome}          Zeca
${sobrenome}     Delivre
${senha}         oZe_eh100%
${nascimento}    05121996

#locators
${title_Ze}                                     Zé Delivery: Entrega de bebidas geladas a preço baixo
${id_inserir_endereco_pag_inicial}              fake-address-search-input
${id_botão_entrar_pag_inicial}                  welcome-button-sign-in
${class_logo_Ze_pag_inicial}                    css-u951ix-Image
${id_aceitar_cookies_pag_inicial}               onetrust-accept-btn-handler
${xpath_tela_aceite_de_termos}                  //div[@class='ot-sdk-row'][contains(.,'O Zé Delivery utiliza cookies que são necessários ao funcionamento adequado de suas Páginas e que podem melhorar a sua experiência. Para mais informações acesse a Política de Privacidade do Zé DeliveryDefinições de cookies Rejeitar todos Aceitar todos os cookies')]
${id_botao_voltar_tela_criar_conta}             account-header-button-back
${id_botao_criar_conta}                         signup-form-button-signup
${id_botao_entrar_em_entrar_na_conta}           login-mail-button-sign-in
${xpath_botao_quero_criar_conta}                //a[contains(.,'Quero criar uma conta')]
${id_inserir_nome_criar}                        signup-form-input-name
${id_inserir_email_criar}                       signup-form-input-email
${id_inserir_senha_criar}                       signup-form-input-password
${id_inserir_cpf_criar}                         signup-form-input-document
${id_inserir_telefone_criar}                    signup-form-input-phone
${id_inserir_telefone_nascimento_criar}         signup-form-input-age
${id_aceite_termos_criar}                       sign-up-form-input-terms
${id_marketing_criar}                           sign-up-form-input-marketing
${id_tenho_conta_criar}                         signup-form-link-have-account
${id_info_criar}                                signup-email-link-info
