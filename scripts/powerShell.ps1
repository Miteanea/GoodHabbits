
#region FunctionDefinitions
# Function to prompt user for a Yes/No input
function Get-YesNoInput {
  param (
    [string]$Prompt = "Launch startup? Y or N:"
  )
    
  do {
    $input = Read-Host -Prompt $Prompt
    $input = $input.ToUpper()
  } while ($input -ne 'Y' -and $input -ne 'N')
    
  return $input
}

function Set-Crif-Env-Vars {
$global:git.rebase.quick = 'c:\euris\goodHabbits\scripts\crif_git_rebase_to_branch.ps1'

  $global:crif = 'c:\euris\projects\crif'
  $global:wps_All = 'C:\CRIF\WebPortalServices\Source'
  $global:wps_issues = 'c:\euris\projects\crif\issues'
  $global:wps_src = 'c:\euris\projects\crif\code'
  $global:wps_fe = 'C:\euris\projects\crif\code\WebPortalServicesFE'
  $global:wps_Monitoring = $wps_Code + "\wps-src-monitoring"
  $global:wps_Core = $wps_Code + "\wps-src-core-net6"
  $global:wps_enquiries = $wps_Code + "\wps-src-enquiries"
  $global:wps_database = $wps_Code + "\database-scripts"
}

function Set-EURIS-Env-Vars {
  $global:euris = 'c:\euris\'
  $global:habbits = 'c:\euris\GoodHabbits' 
}

function Launch-Startup-Euris {
  & "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"

  & "C:\Program Files\Google\Chrome\Application\chrome.exe" `
    "https://jira.euris.it" `
    "https://confluence.euris.it" `
    "https://confluence.euris.it" `
    "https://5icudine.edu.it/"

}
function Launch-Startup-Crif {
  & "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\FortiClient VPN\FortiClient VPN.lnk"
  & "C:\Users\caragheaur\AppData\Local\CiscoSparkLauncher\CiscoCollabHost.exe"

  Start-Sleep -Seconds 30

  & "C:\Program Files\Google\Chrome\Application\chrome.exe" `
    "jiraprd.crif.com/secure/Dashboard.jspa" `
    "owa.crifgroup.com/owa/#path=/mail" `
}
#endregion

Set-Crif-Env-Vars
Set-EURIS-Env-Vars

# Prompt user for input
$userInput = Get-YesNoInput -Prompt "Launch Start-Up? (Y/N)"

# Use the input in a switch expression
switch ($userInput) {
  'Y' {
    Launch-Startup-Crif
    Launch-Startup-Euris
  }
  'N' {
    Write-Output "You chose not to continue."
  }
  default {
    Write-Output "Invalid input."
  }
}

echo "profile run finished"
