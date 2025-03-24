# Testes Automatizados com Robot Framework 🚀

Este repositório contém testes automatizados utilizando **Robot Framework** e **SeleniumLibrary** para automação de testes web.

## 📌 Objetivo
Testar a ferramenta Robot Framework e desenvolver conhecimentos em automação de testes, realizando buscas no Google e validando os resultados.

## 🛠 Tecnologias Utilizadas
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [Python](https://www.python.org/) (necessário para rodar o Robot Framework)
- [Google Chrome](https://www.google.com/intl/pt-BR/chrome/) e [Mozilla Firefox](https://www.mozilla.org/pt-BR/firefox/new/)

## 📂 Estrutura do Projeto
📂 PrimeiroTeste 
── 📄 test.robot # Arquivo principal dos testes 
── 📄 README.md # Documentação do projeto 

## 📝 Descrição dos Testes

### 🔹 Teste 1 - Pesquisa no Google com Chrome
- Abre o navegador **Google Chrome**.
- Acessa a página do Google.
- Realiza uma pesquisa pelo termo **"Robot Framework"**.
- Aguarda os resultados e captura uma captura de tela.

#### 🚨 Problema Encontrado:
Durante a execução, o Google ativou um **CAPTCHA**, impedindo a automação de prosseguir, resultando na falha do teste.

#### 🔧 Solução Implementada:
- Adicionado um `Sleep` de **10 segundos** para permitir a resolução manual do CAPTCHA antes de continuar a execução.

---

### 🔹 Teste 2 - Execução alternativa com Firefox
- Caso o Teste 1 falhe, executa o mesmo processo no **Mozilla Firefox**.
- O objetivo é verificar se a falha é específica do Chrome ou ocorre em múltiplos navegadores.

#### 📊 Relatório de Execução:
- O **Log.html** indica que o teste falhou, o que era esperado devido ao CAPTCHA.
- A alternância entre navegadores foi implementada com sucesso.

## 🚀 Como Executar os Testes
1. Instale as dependências:
   ```bash
   pip install robotframework robotframework-seleniumlibrary
   ```

Certifique-se de ter o ChromeDriver e o GeckoDriver instalados e configurados no PATH.

📌 Considerações
Esse projeto tem como objetivo principal a prática com o Robot Framework.
O CAPTCHA do Google pode ser um desafio para automação de testes, sendo necessário ajustes para contorná-lo.

📌 Sinta-se à vontade para contribuir ou sugerir melhorias! Esse foi meu primeiro contato com testes automatizados.
