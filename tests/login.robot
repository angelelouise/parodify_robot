***Settings***

Documentation   Testes da página de login

Resource       ../resources/base.robot


#executa após cada teste
Test Teardown   Take Screenshot

***Test Cases***
Login com sucesso
    [tags]          smoke
    Open Login Page 
    #input[name*=email]
    Login with                  ${LOGIN_PADRAO}     ${LOGIN_PADRAO_PWD}
    Logout Link Should Be Visible

Senha incorreta
    Open Login Page
    Login with                  ${LOGIN_PADRAO}     abc123
    Alert Should Be             ${MENSSAGEM_ERRO}

Email incorreto
    Open Login Page
    Login with                  teste@parodify.com     ${LOGIN_PADRAO_PWD}
    Alert Should Be             ${MENSSAGEM_ERRO}

Email não informado
    Open Login Page
    Login with                  ${EMPTY}    ${LOGIN_PADRAO_PWD}
    Alert Should Be             ${MENSSAGEM_ERRO}

Senha não informada
    Open Login Page
    Login with                  ${LOGIN_PADRAO}     ${EMPTY}
    Alert Should Be             ${MENSSAGEM_ERRO}
