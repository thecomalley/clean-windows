#####################
# WinConfig
#####################

Enable-RemoteDesktop
Disable-BingSearch
Set-BoxstarterTaskbarOptions -AlwaysShowIconsOn

#####################
# SOFTWARE
#####################

cinst 7zip.install

# Some browsers
cinst GoogleChrome 
cinst firefox

# DevOps Tools
cinst git.install
cinst vscode
cinst postman

cinst azure-cli
cinst azure-functions-core-tools
