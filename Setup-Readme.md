How to Install

 Pre-requist : 

* Current user must be member of Administrators Hyper-V groups (not required right Adminitrators)

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

