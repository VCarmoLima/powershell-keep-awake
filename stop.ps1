$processo = Get-CimInstance Win32_Process | Where-Object { $_.CommandLine -like "*keep-awake.ps1*" }

if ($processo) {
    Stop-Process -Id $processo.ProcessId -Force
    Write-Host "O script Keep Awake foi encerrado com sucesso." -ForegroundColor Green
} else {
    Write-Host "O script não parece estar rodando no momento." -ForegroundColor Yellow
}

Start-Sleep -Seconds 3
