***Settings***

Documentation   Testando o player de paródias

Resource       ../resources/base.robot

Test Setup      Login
    
***Test Cases***

Reproduzir paródia bug de manhã
    Open Search Page
    Check If Search Page is Opened
    Click On Sertanejo
    Check If Sertanejo is Opened
    Open Album                      ${ALBUM}
    Check If Album is Opened
    Click On The Music              ${SONG}
    Check If Music is Playing       ${SONG}