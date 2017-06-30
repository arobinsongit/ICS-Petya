ICS-Petya Resources
=================

Trying to get content out quickly so this won't be pretty.

This is an attempt to collect scripts and quick go-bys for asset owners and incident responders in the Industrial Control Systems sector.

Consider all scripts to have been lightly tested in only my environment so proceed with caution.  If you find mistakes or make improvements please contribute back as your are able.

## Resources
### Scripts
[Create-PetyaVaxFiles.PS1](/PS1/Create-PetyaVaxFiles.ps1) - Creates and verifies magic perfc files in c:\windows

[MS17-010-createperfc.bat](/BAT/MS17-010-createperfc.bat) - Quick and dirty batch file to create magic perfc files in c:\windows

[How to enable and disable SMBv1, SMBv2, and SMBv3 in Windows and Windows Server](https://support.microsoft.com/en-us/help/2696547/how-to-enable-and-disable-smbv1-smbv2-and-smbv3-in-windows-and-windows) - From Microsoft (contains PowerShell scripts to disable/remove)

Explanation and CAUTION: The 'magic' file is supposedly checked by PETYA in order to determine if it should run or not. Developers of malware often make use of these checks to see if they are in a malware analysis system, or to avoid infecting their own systems. This particular magic file is supposed to inoculate and prevent PETYA from running on systems.  However, there are conflicting reports on it's effectiveness on different Windows platforms in different configurations and should not be relied on as a fix. The only true fix is to patch your systems per Microsoft advice.

Explanation and CAUTION: Please note that older control systems may rely on SMB1 communications, and disabling of SMB1 on live system may cause issues with communication that could result in unintended consequences.  Test all changes prior to deployment in control environments using a methodology that limits impacts to production systems.

### All things MS17-010

[MS17-010: Security update for Windows SMB Server: March 14, 2017](https://technet.microsoft.com/en-us/library/security/ms17-010.aspx) - Microsoft Bulletin for MS17-010

[Patches That Fix the Vulnerability For MS17-010](https://blogs.technet.microsoft.com/sudheesn/2017/05/17/patches-that-fix-the-vulnerability-for-ms17-010/) - A consolidated list of patches and associated KB.  Use these KB in a search at https://www.catalog.update.microsoft.com to find offline patches.

[Download-Patches.PS1](/PS1/Download-Patches.ps1) - Bulk download all MS17-010 patches (still being updated to cover more patches)

[Description of the Windows Update Standalone Installer in Windows](https://support.microsoft.com/en-us/help/934307/description-of-the-windows-update-standalone-installer-in-windows) - With commandline switches for silent installs

[How to verify that MS17-010 is installed](https://support.microsoft.com/en-us/help/4023262/how-to-verify-that-ms17-010-is-installed) - From Microsoft (contains PowerShell scripts to verify install)


### Links to Tools/Utilities
#### NMAP
[NMap](https://nmap.org/download.html) for quick and dirty scan to look for vulnerable hosts.  USE WITH EXTREME CAUTION so as not to knock devices off the network.  The command below will scan a subnet of your choice for port 445, and initiate a check to see if the system is vulnerable to the MS17-010 vulnerability.  This script is classified as a 'safe' check by the developer of the script, Paulino Calderon.

Example nmap command line `nmap -p445 --script smb-vuln-ms17-010 --max-hostgroup 3 --open X.X.X.X/X`

More information on the smb-vuln-ms17-010.nse from NMAP project: https://nmap.org/nsedoc/scripts/smb-vuln-ms17-010.html

### Relevant Reading - Petya
https://www.binarydefense.com/petya-ransomware-without-fluff/

### General Reading (WannaCry/Petya/NotPetya/MS17-010)
https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I

https://www.us-cert.gov/ncas/current-activity/2017/06/27/Multiple-Petya-Ransomware-Infections-Reported

### General Vendor Bulletins (WannaCry/Petya/NotPetya/MS17-010)
:lock: [Wonderware](https://gcsresource.schneider-electric.com/support/securitycentral/bulletins/WW17_010_Updated_21June2017.html) - Actual Bulletin

[Rockwell Automation](http://www.rumsey.com/blog/rockwell-automation-recommended-mitigations-%E2%80%9Cwannacry%E2%80%9D-ransomware) - Summary of Bulletin for WannaCry

:lock: [Rockwell Automation](https://rockwellautomation.custhelp.com/app/answers/detail/a_id/1052876) - Actual Bulletin

[Rockwell Automation](http://www.rakb-patchtests.com/data/MS_Patch_Qualification/qualifications.htm) - Patch Support Matrix


Also reference list of vendor resources in [ICS-Cert](https://ics-cert.us-cert.gov/alerts/ICS-ALERT-17-135-01I) advisory

## License

MIT License. See the [LICENSE file](/LICENSE) for details.
