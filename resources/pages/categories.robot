***Settings***

Documentation   Ações da página de categoria

***Keywords***

Open Album
    [Arguments]     ${artist_name}
    Click       xpath=//p[contains(text(), "${artist_name}")]

Check If Album is Opened
    Wait For Elements State     xpath=//h2[contains(text(), "Músicas")]      visible     10
