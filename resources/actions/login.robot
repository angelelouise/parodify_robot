***Settings***

Documentation   Ações da página de login

***Keywords***

Open Login Page
    Open Browser                http://parodify.herokuapp.com/users/sign_in

Login with
    [Arguments]     ${email}    ${password}
    Fill Text                   id=user_email       ${email}
    Fill Text                   id=user_password    ${password}
    Click                       css=input[type=submit]

Alert Should Be
    [Arguments]     ${expect}
    Get Text        css=.is-danger .message-body    should be      ${expect}