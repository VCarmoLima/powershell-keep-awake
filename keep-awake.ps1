<#
.SYNOPSIS
    Script simples para manter o computador ativo simulando uma tecla fantasma.

.DESCRIPTION
    Este script utiliza o WScript.Shell para enviar a tecla F15 a cada 60 segundos.
    A tecla F15 geralmente não tem função atribuída em teclados modernos,
    o que previne o bloqueio de tela sem interferir na digitação do usuário.

.NOTES
    Para parar o script, pressione CTRL + C no terminal.
#>

Write-Host "=========================================="
Write-Host "      Keep Awake - STATUS: ATIVO"
Write-Host "=========================================="
Write-Host "O script enviará um sinal a cada 60 segundos."
Write-Host "Pressione CTRL + C para encerrar."
Write-Host ""

$WShell = New-Object -ComObject WScript.Shell

while ($true) {
    $WShell.SendKeys("{F15}")
    $Timestamp = Get-Date -Format "HH:mm:ss"
    Write-Host "[$Timestamp] Sinal de atividade enviado..." -ForegroundColor DarkGray
    Start-Sleep -Seconds 60
}
