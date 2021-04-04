#Projeto de testes para a aplicação Parodify

## Execução

Para execução em headless:
----------
robot -d ./logs -v browser:chromium -v headless:true tests/
----------

Para execução em modo Debug:
---------
robot -d ./logs -v browser:chromium -v headless:false tests/
---------
