﻿# ============================================================
# Powershell-Script zur Vorbereitung
# Autor: Simon Bärlocher
# ============================================================

$url = "https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
$file = "$env:TEMP\ConfigureRemotingForAnsible.ps1"

(New-Object -TypeName System.Net.WebClient).DownloadFile($url, $file)

Start-Process powershell -Verb runAs -ArgumentList '-ExecutionPolicy ByPass -noprofile -File $file'
