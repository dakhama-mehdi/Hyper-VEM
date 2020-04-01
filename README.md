# Hyper-VEM
Hyper-Virtual Easy Manager to control Hyper-V machine (hyper-VEM)
![Alt Text](https://ivellath.sirv.com/Hyper-VEM.gif)

Hi In this post i will show you a software was i created for Hyper-V machine, that allow you to manage easy your VM on local or remote server, without i credentiel, and without many config, and of corse free.

```diff
- text in red
+ Context :
! text in orange
# text in gray
```
Context :

you find like everyone that hyper-v is the best hypervisor in the world, but you find it hard to work well to switch between machines easily, adapt the display, change network cards in one click, without any credentiel, very fast and very secure ..., this tool is for you, dear community.

Other Usage methods

You can connect on your local server hyper-V or manage the remote server, you can also use RDP connection.

no authentication required or password to enter, very secure and use integrated credential with TLS2.

Requirements :

-Powershell v5+

ON LOCAL SERVER : 


IF Hyper-v is installed on your Windows Server or your Windows 10, just install this tool and run it with administrator,
check also if your are member of the Hyper-V administrators group.

On Remote PC : 


The two computer must be in the domain, or you must resolve the dns name, and on remote PC for exemple you must enable features hyper-V.
be sur that you are member of the Hyper-V administrators group. if not work install the software on your server and run it just on time. you can then connect on your remote server easly.


How To use :


after install, run Hyper-VEM as administrator, click list VM, and enjoy.
to connect VM select VM with mouss and wait the connect estabilish in right.
to start VM, select it on list, right click mouss and select start VM, wait a few and VM will be appareid in top of the list.
the VM with green color is current run, without color is shutdown, and yellow color is saved stat.
to change the network select VM, right click select network, the network will be appareid, click the barre appareid and select network to change.
 

 

 

Important: 
to switch with VM display, you must click a first time in the new VM on list one time for disconnect the last VM, and second time to connect. then you must click two time on new VM list to switch beetwen VM.


Hotkey : 
To simule ALT+CTRL+DELETE = you have a bouton in barre named Hotkey 

 

Feedback :

this is the first version ,all your suggestions and remarks is welcom, to improve the product and make it more useful, thanks
