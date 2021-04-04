***Settings***

Documentation       Ações de navegação do Parodify

***Keywords***

Open Search Page
    Click       css=a[href*=search]

Check If Search Page is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Buscar")]      visible     10

Open Album
    [Arguments]     ${artist_name}
    Click       xpath=//p[contains(text(), "${artist_name}")]

Check If Album is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10

Click On Sertanejo
    Click       xpath=//img[contains(@src, "sertanejo.png")]/..

Check If Sertanejo is Opened    
    Wait For Elements State     xpath=//h2[contains(text(), "Sertanejo")]      visible     10

