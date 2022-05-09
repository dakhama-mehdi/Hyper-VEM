# How to Install

 Prerequisite : 

* Current user must be member of Administrators Hyper-V groups (not required right Adminitrators or Administrators groups)

Install from store Windwos 10/11 :

* Open Micrsofot Store and Search (Hyper-VEM), then install it
Or manually frome : https://apps.microsoft.com/store/detail/hypervem/9NPNQ5DZLCQ4?hl=en-il&gl=IL

Install on Windows Server :

* Download exe from Github and run it

Use PS1 Script :

* Download Script PS1 and also Source files, run then script, dont forget to change variable "instaldir" to your current path

* Autorizate Hyper-V Access (Asking from right admin)

In the first time you open the Tool you need to autorizhed hyper-v acces from account to prevent any error caused by "vmmconnect" credssp to hyper-v, this is done only once and valid for all users of the machine.

Need right admin (only one time) / alternative you can cancel add autorizhed and do it manualy from Microsoft Site like these 
  
Article to enable access manually (by key register) : 

https://docs.microsoft.com/fr-fr/troubleshoot/windows-server/virtualization/vmconnect-fail-to-connect-to-virtual-machine

https://github.com/MicrosoftDocs/SupportArticles-docs/blob/main/support/windows-server/virtualization/vmconnect-fail-to-connect-to-virtual-machine.md

# Troubleshooting 

* If when you click list Vm or connect and Asking for credential, pls logoff and login, or restart computer
* If any Machine is not listed, pls open a powershell and enter : get-vm 
if get-vm work, be sure tge current user is in "Hyper-V administrators groups"
if get-vm commandlet not working, try it on powershell administrator mode, if workin you must added user on administrators groups (may be a problem on systeme)

# Using on 2K 4K screen :

Hyper-V dont support hight DPI, the max resolution is 1080p, you need in this case to change DPI from host machine (like 150dpi or 200dpi) on the screen that use the tool, then retry and the view will be adapted, you can also chose the Adjust diplay mode

# Manage remote hyper-server :

* On Remote PC : 

The two computer must be in the domain, or you must resolve the dns name, and on remote PC for exemple you must enable features hyper-V.
be sur that you are member of the Hyper-V administrators group. if not work install the software on your server and run it just on time. you can then connect on your remote server easly.


# Contact

you can contact use for suggestion, or problem on hyper-vem@outlook.com

