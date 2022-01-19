
# you are not pulling from shares, you should not expose shares...die LAN Man! with my last breath I will curse thee
Set-service -Name LanmanServer -StartupType Disabled
#print spooler: Dead
Set-service -Name Spooler -StartupType Disabled
# Tablet input: pssh nobody use tablet input. its silly.just write right in onenote
Set-service -Name TabletInputService -StartupType Disabled
# Telephony API is tell-a-phony
Set-service -Name TapiSrv -StartupType Disabled
#geolocation service : u can't find me.
Set-service -Name lfsvc -StartupType Disabled

# ain't no homegroup here.
Set-service -Name HomeGroupProvider -StartupType Disabled
# u do not want ur smartcard cert to propagate to the local cache, do you?
Set-service -Name CertPropsvc -StartupType Disabled
# who needs branchcache?
Set-service -Name PeerDistSvc -StartupType Disabled
# i don't need to keep links from NTFS file shares across the network - i haz office.
Set-service -Name TrkWks -StartupType Disabled
# i don't use iscsi
Set-service -Name MSISCSI -StartupType Disabled
# why is SNMPTRAP still on windows 10? i mean, really, who uses SNMP? is it even a real protocol anymore?
Set-service -Name SNMPTRAP -StartupType Disabled

# Peer to Peer discovery svcs...Begone!
Set-service -Name PNRPAutoReg -StartupType Disabled
Set-service -Name p2pimsvc -StartupType Disabled
Set-service -Name p2psvc -StartupType Disabled
Set-service -Name PNRPsvc -StartupType Disabled
# no netbios over tcp/ip. unnecessary. 
Set-service -Name lmhosts -StartupType Disabled

# this is like plug & play only for network devices. no thx. k bye.
Set-service -Name SSDPSRV -StartupType Disabled
# YOU DO NOT NEED TO PUBLISH FROM THIS DEVICE. Discovery Resource Publication service:
Set-service -Name FDResPub -StartupType Disabled
#"Function Discovery host provides a uniform programmatic interface for enumerating system resources" - NO THX. 
Set-service -Name fdPHost -StartupType Disabled

#intel Proset wireless registry thing. curse thee:
Set-service -Name RegSrvc -StartupType Disabled

#optimize the startup cache...i think. on SSD i don't think it really matters.
set-service SysMain -StartupType Automatic

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
