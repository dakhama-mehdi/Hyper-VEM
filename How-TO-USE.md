# Help : Hyper-Virtual Easy Manager

Hyper-VEM manages multiple virtual machines and remote server hypervisor server. Very useful for lab hypervisor server where you need regular access to each virtual machine.
  
##### Table of Contents  :
* [1-Interface](#Interface) 
* [2-Manage_Machine](#Manage_Machine)  
* [3-Manage the network](#Manage_network)
* [4-Settings (Language-Copy)](#Settings)
* [5-View Mode](#View_Mod)

 
## 1-Interface
<a name="Interface"/>

Its interface is easy to use. Remember that you must be a member of the Hyper-V Administrators group.

![Menu](pictures/menu-1-2.png "Menu")

**Text box 1:** Will be activated when the virtual machine (VM) is being accessed.

**Text box 2:** Allows you to access the remote server and list the virtual machines. By default, the name of the current server is displayed.

**Virtual machine information**

You can also view information for a virtual machine, but the virtual machine must be running.

![Virtual machine information](pictures/infor-vm.png "Virtual machine information")

**Let's start**

Once the Hyper-V server you want to access has been defined, click **List VM**. Virtual machines will be listed.

The virtual machines are listed alphabetically and by status, the virtual machines that are running are listed above in green, then the non-colored ones that are in shutdown status and the saved ones in yellow color.

![Lists virtual machines (VMs)](pictures/list-vms.png "Lists virtual machines (VMs)")

  

**Status of virtual machines**

**Green – Running** **![Virtual Machine (VM) in execution](pictures/green-status-vms.png "Virtual Machine (VM) in execution")**

**No color – Turn off** **![Virtual Machine (VM) without status](pictures/no-status-vms.png "Virtual Machine (VM) without status")**

**Yellow – Save** **![Virtual Machine (VM) Saved](pictures/yellow-status-vms.png "Virtual Machine (VM) Saved")  


## 2-Manage_Machine
<a name="Manage_Machine"/>


**To access a virtual machine** is very easy, **just double-click on the name of the virtual machine that is already running**. Click on **HotKey**, then enter your **username** and **password**.

![Access a virtual machine (VM)](pictures/vm-access.gif "Access a virtual machine (VM)")

**To start a virtual machine (VM)** by **right-clicking it**, then clicking **Start-VM**.

![Start a virtual machine (VM)](pictures/start-vm.gif "Start a virtual machine (VM)")

## 3-Manage the network 
<a name="Manage_network"/>
To **change the network of the virtual machine (VM)**, click **Network**, then select the network you want to **connect** to.

![Change networks for a virtual machine (VM)](pictures/network-vm.gif "Change networks for a virtual machine (VM)")


If you **add a new switch (network)** click **Vswitch** in the **top menu** to update.

![Update V-Switch](pictures/new-vswtich.gif "Update V-Switch")

## 4-Settings (Language-Copy)
<a name="Settings"/>

**Languages:** We can change the language between French, English and Brazilian Portuguese, China, Italia, Spanish

![Change language](pictures/language.gif "Change language")

**Copy-clipbord****:** Allows you to **copy a text** to the virtual machine (VM).

![Allows you to copy a text to the virtual machine (VM)](pictures/copy-clipbord.gif "Allows you to copy a text to the virtual machine (VM)")

**Copy****\-files:** Allows you to **copy files** to the virtual machine (VM).

![Allows you to copy files to the virtual machine (VM)](pictures/copy-files.gif "Allows you to copy files to the virtual machine (VM)") 

PS : * The file is copied by defaut to C:\temp directory
     * You need to enable the "Guest Services" On VM to copy the files (not needeed if copy a text)
     
![Menu](pictures/Hyper-V-guestservices.png "Logo")

## 5- View Mode
<a name="View_Mod"/>

By default the **Original Display** is selected, it use the real resolution, you can adjust resolution into the virtual machine (VM), then the resolution change, the original display mode offers a better view. 

![Adjust virtual machine (VM) resolution to preview for original display](pictures/original-display.gif "Adjust virtual machine (VM) resolution to preview for original display")


**View:** You can use this mode to adjust the virtual machine (VM) view if the resolution is very hight that the screen (example : 1920x1080 on a 1376 screen)
If you want to adjust the resolution of the virtual machine (VM) for a more **comfortable view**, click **View**, then click **Adjust** **D****isplay**, then **double-click the virtual machine (VM) name to apply the change**.

![Adjust virtual machine (VM) resolution for more comfortable viewing](pictures/adjust-display.gif "Adjust virtual machine (VM) resolution for more comfortable viewing") 

“Hyper-Virtual Easy Manager By Dakhama"

Thanks to Gabriel Luiz who prepared this document.

[![gabrielluiz.com](pictures/logo%202.png "gabrielluiz.com")](https://gabrielluiz.com/)
