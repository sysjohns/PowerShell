# Reset WSUS Settings
# v1.0 1/18/2022
# Aaron Johns
# https://www.aaronjohns.com

# Stop the Windows Update service
Stop-Service -Name wuauserv

# Remove the registry key
Remove-Item 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate' -Recurse

# Start the Windows Update service
Start-Service -Name wuauserv