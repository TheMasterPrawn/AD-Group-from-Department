Install-WindowsFeature RSAT-AD-Tools 
Install-WindowsFeature AD-Domain-Services

#
# Windows PowerShell script for AD DS Deployment
#
Import-Module ADDSDeployment 

$SafeModeAdministratorPassword = ConvertTo-SecureString "Password01__$" -AsPlainText -Force
$DomainName = "Corp.Local"
$DomainNetbiosName = "Corp".ToUpper()

Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "WinThreshold" `
-DomainName $DomainName  `
-DomainNetbiosName $DomainNetbiosName `
-ForestMode "WinThreshold" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true -SafeModeAdministratorPassword $SafeModeAdministratorPassword

