Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Install Stuff that is common to computer usage
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

choco install firefox -y 
choco install notepadplusplus -y 
choco install git -y 
choco install visualstudiocode -y
choco install gitkraken -y

