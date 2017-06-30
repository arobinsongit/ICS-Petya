ICS-Petya Resources
=================

Trying to get content out quickly so this won't be pretty.

This is an attempt to collect scripts and quick go-bys for asset owners and incident responders in the Industrial Control Systems sector.

## Resources
### Scripts
[Create-PetyaVaxFiles.PS1](/PS1/Create-PetyaVaxFiles.ps1) - Creates and verifies magic perfc files in c:\windows

[How to enable and disable SMBv1, SMBv2, and SMBv3 in Windows and Windows Server](https://support.microsoft.com/en-us/help/2696547/how-to-enable-and-disable-smbv1-smbv2-and-smbv3-in-windows-and-windows) - From Microsoft (contains PowerShell scripts to disable/remove)


### All things MS17-010

[MS17-010: Security update for Windows SMB Server: March 14, 2017](https://technet.microsoft.com/en-us/library/security/ms17-010.aspx) - Microsoft Bulletin for MS17-010

[Patches That Fix the Vulnerability For MS17-010](https://blogs.technet.microsoft.com/sudheesn/2017/05/17/patches-that-fix-the-vulnerability-for-ms17-010/) - A consolidated list of patches and associated KB.  Use these KB in a search at https://www.catalog.update.microsoft.com to find offline patches.

[Download-Patches.PS1](/PS1/Download-Patches.ps1) - Bulk download all MS17-010 patches (still being updated to cover more patches)

[Description of the Windows Update Standalone Installer in Windows](https://support.microsoft.com/en-us/help/934307/description-of-the-windows-update-standalone-installer-in-windows) - With commandline switches for silent installs

[How to verify that MS17-010 is installed](https://support.microsoft.com/en-us/help/4023262/how-to-verify-that-ms17-010-is-installed) - From Microsoft (contains PowerShell scripts to verify install)


### Links to Tools/Utilities
#### NMAP
[NMap](https://nmap.org/download.html) for quick and dirty scan to look for vulnerable hosts.  USE WITH EXTREME CAUTION so as not to knock devices off the network.  

Example nmap command line `nmap -sC -p 445 --max-hostgroup 3 --open --script smb-vuln-ms17-010.nse X.X.X.X/X`

### Relevant Reading - Petya
https://www.binarydefense.com/petya-ransomware-without-fluff/

### General Reading (WannaCry/Petya/NotPetya/MS17-010)
https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I

https://www.us-cert.gov/ncas/current-activity/2017/06/27/Multiple-Petya-Ransomware-Infections-Reported

### General Vendor Bulletins (WannaCry/Petya/NotPetya/MS17-010)
:lock: [Wonderware](https://gcsresource.schneider-electric.com/support/securitycentral/bulletins/WW17_010_Updated_21June2017.html) - Actual Bulletin

[Rockwell Automation](http://www.rumsey.com/blog/rockwell-automation-recommended-mitigations-%E2%80%9Cwannacry%E2%80%9D-ransomware) - Summary of Bulletin

:lock: [Rockwell Automation](https://rockwellautomation.custhelp.com/app/answers/detail/a_id/1047348) - Actual Bulletin


Also reference list of vendor resources in [ICS-Cert](https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I) advisory

## License

MIT License. See the [LICENSE file](/LICENSE) for details.
