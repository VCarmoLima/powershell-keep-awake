# Keep Awake PowerShell Script 

Um script simples e leve em PowerShell para impedir que o computador bloqueie a tela ou entre em modo de suspensão durante leituras longas, monitoramento de processos ou apresentações.

## Como funciona
O script utiliza o `WScript.Shell` para simular o pressionamento da tecla **F15** a cada 60 segundos. 
* A tecla F15 existe no padrão Windows, mas raramente existe fisicamente em teclados modernos.
* Isso engana o sistema operacional, fazendo-o "pensar" que há atividade, sem interferir na sua digitação ou uso do mouse.

## Como usar

1. Baixe o arquivo `keep-awake.ps1`.
2. Clique com o botão direito e selecione **"Executar com o PowerShell"**.
3. Uma janela azul abrirá informando que o script está rodando.
4. Para parar, basta fechar a janela ou pressionar `CTRL + C`.

## Requisitos
* Windows 10 ou 11
* PowerShell habilitado para execução de scripts locais.
    * *Caso tenha erro de permissão, execute no terminal:* `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

## Disclaimer (Aviso Legal)
Este script foi criado para auxiliar na produtividade (ex: evitar bloqueio enquanto se lê documentação técnica na tela). 
* Verifique as políticas de segurança da informação da sua empresa antes de utilizar ferramentas que alteram o comportamento de bloqueio de tela.
* O autor não se responsabiliza pelo uso indevido desta ferramenta em ambientes corporativos restritos.
