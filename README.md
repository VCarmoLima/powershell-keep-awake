# Keep Awake PowerShell Script 

Um script simples e leve em PowerShell para impedir que o computador bloqueie a tela ou entre em modo de suspensão durante leituras longas, monitoramento de processos ou apresentações.

## Como funciona
O script utiliza o `WScript.Shell` para simular o pressionamento da tecla **F15** a cada 60 segundos. 
* A tecla F15 existe no padrão Windows, mas raramente existe fisicamente em teclados modernos.
* Isso engana o sistema operacional, fazendo-o "pensar" que há atividade, sem interferir na sua digitação ou uso do mouse.

## Como usar

### Opção 1: Modo Visível (Para testes)
1. Clique com o botão direito em `keep-awake.ps1`.
2. Selecione **"Executar com o PowerShell"**.
3. Uma janela ficará aberta. Para fechar, apenas feche a janela.

### Opção 2: Modo Silencioso (Recomendado para o dia a dia)
Este modo roda o script em segundo plano, sem janelas atrapalhando.

1. **Para LIGAR:** Dê um clique duplo no arquivo `run-silent.vbs`.
   * *Nada aparecerá na tela, mas o script estará rodando.*
   
2. **Para DESLIGAR:** Clique com o botão direito no arquivo `stop.ps1` e escolha **"Executar com o PowerShell"**.
   * *Ele buscará e encerrará apenas este script, sem afetar outros trabalhos.*

## Requisitos
* Windows 10 ou 11
* PowerShell habilitado para execução de scripts locais.
    * *Caso tenha erro de permissão, execute no terminal:* `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser`

## Disclaimer (Aviso Legal)
Este script foi criado para auxiliar na produtividade (ex: evitar bloqueio enquanto se lê documentação técnica na tela). 
* Verifique as políticas de segurança da informação da sua empresa antes de utilizar ferramentas que alteram o comportamento de bloqueio de tela.
* O autor não se responsabiliza pelo uso indevido desta ferramenta em ambientes corporativos restritos.
