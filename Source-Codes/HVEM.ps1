
# Script to manage virtual machines under Hyper-V - Credits DAKHAMA MEhdi - https://github.com/dakhama-mehdi/Hyper-VEM #
# Thanks for Contribution : Gabriel Luiz - MVP
#                    : Souin Matthieu 
	 
# Note: adjust the variable path to target the source files ($instaldir)
# Move All sources files on ($instaldir Path)
	
	#Contact : hyper-vem@outlook.com

	# Source files is from mstscax.dll, you can use your owen dll, we need AxInterop.MSTSCLib.dll, AxMSTSCLib.dll and MSTSCLib.dll
	# To create a necessary Dlls, use Aximp.exe from your visual studio or SDK. here is my path "C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools"
	# Copy Mstscax.dll to your Desktop in new folder from "%windir%\system32\mstscax.dll"
	# then open the CMD go to the Aximp.exe path and enter :  aximp.exe "your_path_to_folder\mstscax.dll"
	# that will generate the necessary DLLs, change line 193,194,195


#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load('AspNetMMCExt, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][Reflection.Assembly]::Load('AspNetMMCExt.resources, Version=2.0.0.0, Culture=fr, PublicKeyToken=b03f5f7f11d50a3a')
#endregion Import Assemblies


function Main {

	Param ([String]$Commandline)
		

	 
	if((Show-VM-mehdi-2-x_psf) -eq 'OK')
	{
		
	}
	
	$script:ExitCode = 0 #Set the exit code for the Packager
}


#endregion Source: Startup.pss

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{
	
		[OutputType([string])]
		param ()
		if ($null -ne $hostinvocation)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	
	
#endregion Source: Globals.ps1

#region Source: Agree.psf
function Show-Agree_psf
{

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('AspNetMMCExt, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('AspNetMMCExt.resources, Version=2.0.0.0, Culture=fr, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('netstandard, Version=2.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51')
	[void][reflection.assembly]::Load('AxInterop.MSTSCLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null')
	[void][reflection.assembly]::Load('AxMSTSCLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null')
	[void][reflection.assembly]::Load('MSTSCLib, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formHyperVEM = New-Object 'System.Windows.Forms.Form'
	$picturebox1 = New-Object 'System.Windows.Forms.PictureBox'
	$buttonOK = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$formHyperVEM_Load={
		#TODO: Initialize Form Controls here
		
	}
	
	$picturebox1_Click={
		#TODO: Place custom script here
		
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formHyperVEM.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$picturebox1.remove_Click($picturebox1_Click)
			$formHyperVEM.remove_Load($formHyperVEM_Load)
			$formHyperVEM.remove_Load($Form_StateCorrection_Load)
			$formHyperVEM.remove_Closing($Form_StoreValues_Closing)
			$formHyperVEM.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formHyperVEM.SuspendLayout()
	#
	# formHyperVEM
	#
	$formHyperVEM.Controls.Add($picturebox1)
	$formHyperVEM.Controls.Add($buttonOK)
	$formHyperVEM.AcceptButton = $buttonOK
	$formHyperVEM.AutoScaleDimensions = '6, 13'
	$formHyperVEM.AutoScaleMode = 'Font'
	$formHyperVEM.ClientSize = '842, 463'
	$formHyperVEM.FormBorderStyle = 'FixedDialog'
	$formHyperVEM.MaximizeBox = $False
	$formHyperVEM.MinimizeBox = $False
	$formHyperVEM.Name = 'formHyperVEM'
	$formHyperVEM.StartPosition = 'CenterScreen'
	$formHyperVEM.Text = 'Hyper-VEM'
	$formHyperVEM.add_Load($formHyperVEM_Load)
	#
	# picturebox1
	#
	#region Binary Data
	$picturebox1.Image = [System.Drawing.Image]::FromFile($instaldir + 'agree.png')
	#endregion
	$picturebox1.Location = '12, 12'
	$picturebox1.Name = 'picturebox1'
	$picturebox1.Size = '826, 410'
	$picturebox1.TabIndex = 1
	$picturebox1.TabStop = $False
	$picturebox1.add_Click($picturebox1_Click)
	#
	# buttonOK
	#
	$buttonOK.Anchor = 'Bottom, Right'
	$buttonOK.DialogResult = 'OK'
	$buttonOK.Location = '755, 428'
	$buttonOK.Name = 'buttonOK'
	$buttonOK.Size = '75, 23'
	$buttonOK.TabIndex = 0
	$buttonOK.Text = '&OK'
	$buttonOK.UseCompatibleTextRendering = $True
	$buttonOK.UseVisualStyleBackColor = $True
	$formHyperVEM.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formHyperVEM.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formHyperVEM.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formHyperVEM.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$formHyperVEM.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $formHyperVEM.ShowDialog()

}
#endregion Source: Agree.psf

#region Source: VM-mehdi-2-x.psf
function Show-VM-mehdi-2-x_psf
{

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('AspNetMMCExt, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('AspNetMMCExt.resources, Version=2.0.0.0, Culture=fr, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('netstandard, Version=2.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formHyperVEM27 = New-Object 'System.Windows.Forms.Form'
	$splitcontainer1 = New-Object 'System.Windows.Forms.SplitContainer'
	$buttonListerLesVMs = New-Object 'System.Windows.Forms.Button'
	$datagridview1 = New-Object 'System.Windows.Forms.DataGridView'
	$vmIDTextBox = New-Object 'System.Windows.Forms.TextBox'
	$contextmenustrip1 = New-Object 'System.Windows.Forms.ContextMenuStrip'
	$demarrerVMToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$arreterVMToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$enregistrerEtatToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$eteindreLaVMToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$menustrip1 = New-Object 'System.Windows.Forms.MenuStrip'
	$fichiersToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$affichageToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Parametres = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$adapteraLecranToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$affichageFixeToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Langue = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$quitterToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$aideToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$utilisationToolStripMenuItem1 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$aproposToolStripMenuItem2 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$francaisToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$englishToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$optionToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripSeparator'
	$réseauToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Netadap1 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$vswitch1 = New-Object 'System.Windows.Forms.ToolStripComboBox'
	$vswitchok = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Netadap2 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Netadap3 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$vswitch2 = New-Object 'System.Windows.Forms.ToolStripComboBox'
	$vswitchok2 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$vswitch3 = New-Object 'System.Windows.Forms.ToolStripComboBox'
	$vswitchok3 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$disconnect1 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$disconnect2 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$disconnect3 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$label1 = New-Object 'System.Windows.Forms.Label'
	$hotkeyToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$buttonPscheck = New-Object 'System.Windows.Forms.Button'
	$vswitchToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$textbox2 = New-Object 'System.Windows.Forms.TextBox'
	$textbox3 = New-Object 'System.Windows.Forms.TextBox'
	$tooltip1 = New-Object 'System.Windows.Forms.ToolTip'
	$richtextbox1 = New-Object 'System.Windows.Forms.RichTextBox'
	$Netadap4 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$vswitch4 = New-Object 'System.Windows.Forms.ToolStripComboBox'
	$vswitchok4 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$disconnect4 = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$brzeliToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$copyClipboardToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$copyFilesToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$chinaToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$italiaToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$spainToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$Column1 = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	
	
	# Script to manage virtual machines under Hyper-V - Credits DAKHAMA MEhdi - GithubDakhama ##
	
	# Note: adjust the variable path to the source files
	
	#Contact : hyper-vem@outlook.com
	#
	
	$script:instaldir = $env:ProgramFiles + "\Hyper-VEM\Hyper-VEM\"
	
	[system.reflection.Assembly]::LoadFrom($instaldir + ".\MSTSCLib.dll")
	[system.reflection.Assembly]::LoadFrom($instaldir + ".\AxMSTSClib.dll")
	[system.reflection.Assembly]::LoadFrom($instaldir + ".\AxInterop.MSTSClib.dll")
	
	$HVM = New-Object AxMSTSCLib.AxMsRdpClient9NotSafeForScripting
	$HVM.Dock = 'Fill'
	$HVM.AdvancedSardConfiguration
	$splitcontainer1.Panel2.Controls.Add($HVM)
	$computenrame = $env:COMPUTERNAME
	Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowDefaultCredentials -Name Hyper-V -ErrorVariable pshyperv -ErrorAction SilentlyContinue > $nul
	$j = Start-Job -ScriptBlock { (Get-VMSwitch).name  }
	$textbox1.Text = $computenrame
	
	$formHyperVEM27_Load= {
		#TODO: Initialize Form Controls here
	
		if ((Test-Path HKCU:\SOFTWARE\HV-MAN\HV-MAN-v2\) -eq $false)
		{
			New-Item HKCU:\SOFTWARE\HV-MAN\
			New-Item HKCU:\SOFTWARE\HV-MAN\HV-MAN-v2\
			
		}
		
		$value = (Get-ItemProperty -Path HKCU:\SOFTWARE\HV-MAN\HV-MAN-v2\ -ErrorVariable test -ErrorAction SilentlyContinue)
		$lang = $value.langage
		
		if ($lang)
		{
			switch ($lang)
			{
				EN { $result = '\language-en.xml' }
				ES { $result = '\language-es.xml' }
				FR { $result = '\language-fr.xml' }
				IT { $result = '\language-It.xml' }
				PT { $result = '\language-pt-br.xml' }
				CH { $result = '\language-ch.xml' }
				Default { $result = '\language-en.xml' }
			}
			
			$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + $result))
			
			tradmenu
		}
		else
		{
			$syslang = (Get-WinSystemLocale).name
			
			switch -Wildcard ($syslang)
			{
				"en-*" { & $englishToolStripMenuItem_Click }
				"es-*"  { & $espanaToolStripMenuItem_Click }
				"fr-*"  { & $francaisToolStripMenuItem_Click }
				"it-*"  { & $italiaToolStripMenuItem_Click }
				"ch-*"  { & $chinaToolStripMenuItem_Click }
				"pt-*" { & $brzeliToolStripMenuItem }
				Default { & $englishToolStripMenuItem_Click }
			}
		}	
		
		
		if ($value.display -eq "Dynamic")
		{
			& $adapteraLecranToolStripMenuItem_Click
		}
		elseif ($value.display -eq "FIX")
		{
		}
		else
		{
			New-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-v2\ -Name display -Value FIX
		}
		
		
	}
	
	function tradmenu
	{
		
		$buttonListerLesVMs.Text = $xmldata.action.ListVM.InnerText
		$fichiersToolStripMenuItem.Text = $xmldata.action.File.InnerText
		$affichageFixeToolStripMenuItem.Text = $xmldata.action.Viewdefault.InnerText
		$affichageToolStripMenuItem.Text = $xmldata.action.View.InnerText
		$aideToolStripMenuItem.Text = $xmldata.action.Help.InnerText
		$Parametres.Text = $xmldata.action.Settings.InnerText
		$aproposToolStripMenuItem2.Text = $xmldata.action.About.InnerText
		$utilisationToolStripMenuItem1.Text = $xmldata.action.Usage.InnerText
		$affichageFixeToolStripMenuItem.Text = $xmldata.action.Displayfix.InnerText
		$adapteraLecranToolStripMenuItem.Text = $xmldata.action.Displayauto.InnerText
		$Langue.Text = $xmldata.action.Language.InnerText
		$label1.Text = $xmldata.action.Server.InnerText
		$réseauToolStripMenuItem.Text = $xmldata.action.Network.InnerText
		$demarrerVMToolStripMenuItem.Text = $xmldata.action.StartVM.InnerText
		$arreterVMToolStripMenuItem.Text = $xmldata.action.StopVM.InnerText
		$enregistrerEtatToolStripMenuItem.Text = $xmldata.action.Savestate.InnerText
		$eteindreLaVMToolStripMenuItem.Text = $xmldata.action.Shutdown.InnerText
		$quitterToolStripMenuItem.Text = $xmldata.action.Exit.InnerText
		$copyClipboardToolStripMenuItem.Text = $xmldata.action.Copyclipbiard.InnerText
		$copyFilesToolStripMenuItem.Text = $xmldata.action.Copyfiles.InnerText
	}
	
	$Panel2_Paint=[System.Windows.Forms.PaintEventHandler]{
	#Event Argument: $_ = [System.Windows.Forms.PaintEventArgs]
		#TODO: Place custom script here
		
	}
	
	$Panel1_Paint=[System.Windows.Forms.PaintEventHandler]{
	#Event Argument: $_ = [System.Windows.Forms.PaintEventArgs]
		#TODO: Place custom script here
		
	}
	
	function getinfosVM ($VM)
	{
		#TODO: Place custom script here
		
		$richtextbox1.Clear()
		
		Get-VM $VM | Select-Object -Property dvddrives, Generation, processorCount, DynamicMemoryEnabled, MemoryStartup, AutomaticCheckpointsEnabled, HardDrives, NetworkAdapters | ForEach-Object {
			
			$richtextbox1.Text = $xmldata.action.Generation.InnerText + $_.Generation + "`r`n"
			
			$richtextbox1.Text += "`r`n" + $xmldata.action.NbrProcs.InnerText + $_.processorCount + "`r`n"
			
			$richtextbox1.Text += "`r`n" + $xmldata.action.DRam.InnerText + $_.DynamicMemoryEnabled + "`r`n"
			
			$richtextbox1.Text += "`r`n" + $xmldata.action.SRam.InnerText + $_.MemoryStartup/1MB + " mb" + " `r`n"
			
			$richtextbox1.Text += "`r`n" + $xmldata.action.AChekpoint.InnerText + $_.AutomaticCheckpointsEnabled + " `r`n"
			
			foreach ($hdd in $_.HardDrives)
			{
				$richtextbox1.Text += "`r`n" + $xmldata.action.HDD.InnerText + $hdd.path.split("\")[-1] + "`r`n"
			}
			
			foreach ($ISO in $_.dvddrives.path)
				{
				if ($ISO) { $richtextbox1.Text += "`r`n" + $xmldata.action.DVD.InnerText  + $iso.split("\")[-1] + "`r`n" }
			}
			
			foreach ($net in $_.NetworkAdapters)
			{
				
				$richtextbox1.Text += "`r`n" + $xmldata.action.NET.InnerText  + $net.switchname + "`r`n" + "IP : " + $net.IPAddresses[0] + "`r`n"
				
			}
		}
	}
	
	function New-HVsession ($id, $machine)
	{
		
		$vmIDTextBox.Text = $id
		
		$HVM.Server = $machine
		
		$HVM.AdvancedSettings2.DisplayConnectionBar = 'true'
		$HVM.ConnectingText = 'Connecting...'
		$HVM.DisconnectedText = "Disconnected"
		$HVM.AdvancedSettings7.RelativeMouseMode = "true"
		
		if ($adapteraLecranToolStripMenuItem.Checked -like "$true")
		{
			$HVM.Dock = 'None'
			$HVM.AdvancedSettings7.SmartSizing = "true"
			
		}
		else
		{
			$HVM.AdvancedSettings7.SmartSizing = "false"
		}
		
		$HVM.AdvancedSettings7.AuthenticationServiceClass = "Microsoft Virtual Console Service"
		$HVM.AdvancedSettings6.AuthenticationLevel = 0
		
		$HVM.AdvancedSettings2.EnableCredSspSupport = "true"
		$HVM.AdvancedSettings2.NegotiateSecurityLayer = "false"
		$HVM.AdvancedSettings.ContainerHandledFullScreen = 1
		
		$HVM.AdvancedSettings7.DisableRdpdr = 0
		
		$HVM.AdvancedSettings8.RedirectClipboard = "true"
		
		$HVM.AdvancedSettings2.RDPPort = "2179"
		$HVM.AdvancedSettings7.PCB = $vmIDTextBox.Text
		
		$HVM.Enabled = "true"
		$HVM.Connect()
		
	}
	
	function deconnecter
	{
		
		$HVM.Disconnect()
		[System.Windows.Forms.Application]::DoEvents() 
		$splitcontainer1.Panel2.Dock = 'None'
		$splitcontainer1.Panel2.Update()
		
	}
	
	$connect_Click={
		#TODO: Place custom script here
		$SelectVM = $datagridview1.SelectedCells[0].Value
		
		while ($HVM.Connected -ne 0)
		{
			deconnecter
		}
		
		$localhost = $textbox1.Text
	
		if ((get-vm -Name $SelectVM -ComputerName $localhost).state -like "Running")
		{
			$vmid = (get-vm -Name $SelectVM -ComputerName $localhost).id
			
			New-HVsession $vmid $localhost
			
			[System.Windows.Forms.Application]::DoEvents()
			
			getinfosVM $SelectVM
			
		}
		
	}
	
	#region Control Helper Functions
	function Update-ListBox
	{
			
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ListBox]
			$ListBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[Parameter(Mandatory = $false)]
			[string]
			$DisplayMember,
			[switch]
			$Append
		)
		
		if (-not $Append)
		{
			$listBox.Items.Clear()
		}
		
		if ($Items -is [System.Windows.Forms.ListBox+ObjectCollection])
		{
			$listBox.Items.AddRange($Items)
		}
		elseif ($Items -is [Array])
		{
			$listBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$listBox.Items.Add($obj)
			}
			$listBox.EndUpdate()
		}
		else
		{
			$listBox.Items.Add($Items)
		}
		
		$listBox.DisplayMember = $DisplayMember
	}
	
	function Update-ToolStripComboBox
	{
	
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ToolStripComboBox]
			$ToolStripComboBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[switch]
			$Append
		)
		
		if (-not $Append)
		{
			$ToolStripComboBox.Items.Clear()
		}
		
		if ($Items -is [Object[]])
		{
			$ToolStripComboBox.Items.AddRange($Items)
		}
		elseif ($Items -is [Array])
		{
			$ToolStripComboBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$ToolStripComboBox.Items.Add($obj)
			}
			$ToolStripComboBox.EndUpdate()
		}
		else
		{
			$ToolStripComboBox.Items.Add($Items)
		}
	}
	
	function Update-DataGridView
	{
	
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.DataGridView]$DataGridView,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Item,
		    [Parameter(Mandatory=$false)]
			[string]$DataMember,
			[System.Windows.Forms.DataGridViewAutoSizeColumnMode]$AutoSizeColumns = 'None'
		)
		$DataGridView.SuspendLayout()
		$DataGridView.DataMember = $DataMember
		
		if ($Item -is [System.Data.DataSet] -and $Item.Tables.Count -gt 0)
		{
			$DataGridView.DataSource = $Item.Tables[0]
		}
		elseif ($Item -is [System.ComponentModel.IListSource]`
		-or $Item -is [System.ComponentModel.IBindingList] -or $Item -is [System.ComponentModel.IBindingListView] )
		{
			$DataGridView.DataSource = $Item
		}
		else
		{
			$array = New-Object System.Collections.ArrayList
			
			if ($Item -is [System.Collections.IList])
			{
				$array.AddRange($Item)
			}
			else
			{
				$array.Add($Item)
			}
			$DataGridView.DataSource = $array
		}
		
		if ($AutoSizeColumns -ne 'None')
		{
			$DataGridView.AutoResizeColumns($AutoSizeColumns)
		}
		
		$DataGridView.ResumeLayout()
	}
	
	function ConvertTo-DataTable
	{
		
		[OutputType([System.Data.DataTable])]
		param(
		[ValidateNotNull()]
		$InputObject, 
		[ValidateNotNull()]
		[System.Data.DataTable]$Table,
		[switch]$RetainColumns,
		[switch]$FilterWMIProperties)
		
		if($null -eq $Table)
		{
			$Table = New-Object System.Data.DataTable
		}
		
		if ($InputObject -is [System.Data.DataTable])
		{
			$Table = $InputObject
		}
		elseif ($InputObject -is [System.Data.DataSet] -and $InputObject.Tables.Count -gt 0)
		{
			$Table = $InputObject.Tables[0]
		}
		else
		{
			if (-not $RetainColumns -or $Table.Columns.Count -eq 0)
			{
				#Clear out the Table Contents
				$Table.Clear()
				
				if ($null -eq $InputObject) { return } #Empty Data
				
				$object = $null
				#find the first non null value
				foreach ($item in $InputObject)
				{
					if ($null -ne $item)
					{
						$object = $item
						break
					}
				}
				
				if ($null -eq $object) { return } #All null then empty
				
				#Get all the properties in order to create the columns
				foreach ($prop in $object.PSObject.Get_Properties())
				{
					if (-not $FilterWMIProperties -or -not $prop.Name.StartsWith('__')) #filter out WMI properties
					{
						#Get the type from the Definition string
						$type = $null
						
						if ($null -ne $prop.Value)
						{
							try { $type = $prop.Value.GetType() }
							catch { Out-Null }
						}
						
						if ($null -ne $type) # -and [System.Type]::GetTypeCode($type) -ne 'Object')
						{
							[void]$table.Columns.Add($prop.Name, $type)
						}
						else #Type info not found
						{
							[void]$table.Columns.Add($prop.Name)
						}
					}
				}
				
				if ($object -is [System.Data.DataRow])
				{
					foreach ($item in $InputObject)
					{
						$Table.Rows.Add($item)
					}
					return @( ,$Table)
				}
			}
			else
			{
				$Table.Rows.Clear()
			}
			
			foreach ($item in $InputObject)
			{
				$row = $table.NewRow()
				
				if ($item)
				{
					foreach ($prop in $item.PSObject.Get_Properties())
					{
						if ($table.Columns.Contains($prop.Name))
						{
							$row.Item($prop.Name) = $prop.Value
						}
					}
				}
				[void]$table.Rows.Add($row)
			}
		}
		
		return @(,$Table)	
	}
	#endregion
	
	$buttonListerLesVMs_Click={
		#TODO: Place custom script here
		$localhost = $textbox1.Text
		
		$datagridview1.Rows.Clear()
		$datagridview1.ClearSelection()
		
		$vm = Get-vm -ComputerName $localhost | select @{ Name = "VM"; Expression = { $_.name } }, state | Sort-Object state 
		$dt = ConvertTo-DataTable $vm
		
		Update-DataGridView -DataGridView $datagridview1 -Item $dt
		$datagridview1.Columns['state'].Visible = $false
		$datagridview1.Columns['column1'].Visible = $true
		
		foreach ($row in $datagridview1.rows)
		{
					
			if ($row.cells['state'].value -eq '6')
			{
				$row.Cells['column1'].Style.BackColor = 'Yellow'
			}
			elseif ($row.cells['state'].value -eq '2')
			{
				$row.Cells['column1'].Style.BackColor = 'green'
			}
		}
		
		$datagridview1.Rows[0].Cells[1].Selected = $true
	}
	
	$vmIDTextBox_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$contextmenustrip1_Opening=[System.ComponentModel.CancelEventHandler]{
	#Event Argument: $_ = [System.ComponentModel.CancelEventArgs]
		#TODO: Place custom script here
	}
	
	$demarrerVMToolStripMenuItem_Click={
		#TODO: Place custom script here
		$localhost = $textbox1.Text
		$VM = $datagridview1.SelectedCells[0].Value
	
			Start-VM $VM -computername $localhost -ErrorVariable noparametre -Confirm:$false
			if (!$noparametre)
			{
			& $buttonListerLesVMs_Click
			$textbox3.Text = $null	
			}
			else
			{
				[System.Windows.Forms.MessageBox]::Show($noparametre, 'error', 'ok', 'error')
			}
	}
	
	$arreterVMToolStripMenuItem_Click={
		#TODO: Place custom script here
		$localhost = $textbox1.Text
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		Stop-VM $VMselect -computername $localhost -ErrorVariable noparametre -Confirm:$false
		if (!$noparametre)
		{
			& $buttonListerLesVMs_Click
			$textbox3.Text = $null
		}
		else
		{
			[System.Windows.Forms.MessageBox]::Show($noparametre, 'error', 'ok', 'error')
		}
		
	}
	
	$eteindreLaVMToolStripMenuItem_Click={
		#TODO: Place custom script here
		$localhost = $textbox1.Text
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		Stop-VM $VMselect -TurnOff -computername $localhost -ErrorVariable noparametre -Confirm:$false
		if (!$noparametre)
		{
			& $buttonListerLesVMs_Click
			$textbox3.Text = $null
		}
		else
		{
			[System.Windows.Forms.MessageBox]::Show($noparametre, 'error', 'ok', 'error')
		}	
	}
	
	$enregistrerEtatToolStripMenuItem_Click={
		#TODO: Place custom script here
		$localhost = $textbox1.Text
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		Stop-VM $VMselect -Save -computername $localhost -ErrorVariable noparametre -Confirm:$false
		if (!$noparametre)
		{
			& $buttonListerLesVMs_Click
			$textbox3.Text = $null
		}
		else
		{
			[System.Windows.Forms.MessageBox]::Show($noparametre, 'error', 'ok', 'error')
		}	
	}
	
	$menustrip1_ItemClicked=[System.Windows.Forms.ToolStripItemClickedEventHandler]{
	#Event Argument: $_ = [System.Windows.Forms.ToolStripItemClickedEventArgs]
		#TODO: Place custom script here
		
	}
	
	$adapteraLecranToolStripMenuItem_Click={
		#TODO: Place custom script here
		$adapteraLecranToolStripMenuItem.Checked = $true
		$affichageFixeToolStripMenuItem.Checked = $false
	
		set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name display -Value Dynamic
	}
	
	$affichageFixeToolStripMenuItem_Click={
		#TODO: Place custom script here
		$affichageFixeToolStripMenuItem.Checked = $true
		$adapteraLecranToolStripMenuItem.Checked = $false
	
		set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name display -Value FIX
	}
	
	
	
	$buttonVswitch_Click={
		#TODO: Place custom script here
		$switch = Receive-Job -Job $j
		if (!$switch)
		{
			$localhost = $textbox1.Text
			$switch = (Get-VMSwitch -ComputerName $env:COMPUTERNAME).name
		}
		
		$vswitch1.Items.Clear()
		$vswitch2.Items.Clear()
		$vswitch3.Items.Clear()
		$vswitch4.Items.Clear()
		
		foreach ($obj in $switch)
		{
			$vswitch1.Items.Add($obj)
			$vswitch2.Items.Add($obj)
			$vswitch3.Items.Add($obj)
			$vswitch4.Items.Add($obj)
			
		}
	}
	
	$datagridview1_CellContentClick=[System.Windows.Forms.DataGridViewCellEventHandler]{
	#Event Argument: $_ = [System.Windows.Forms.DataGridViewCellEventArgs]
		#TODO: Place custom script here
		
		& $connect_Click
	
	}
	
	
	$aproposToolStripMenuItem2_Click={
		#TODO: Place custom script here
		[System.Windows.Forms.MessageBox]::Show("Microsoft Hyper Virtual Easy Manager `r`n`r`nDevelopped By : Dakhama Mehdi `r`n`r`nContribution : Souin Matthieu `r`n`r`nThanks to : Gabriel Luiz `r`n`r`nVersion 2.7.0 `r`nRelease   05/2022 `r`n.NET V3.5.2", 'Hyper - Virtual Easy Manager')
	}
	
	$englishToolStripMenuItem_Click={
		#TODO: Place custom script here
		
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-en.xml'))
		Set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value EN
		
		tradmenu	
		
	}
	
	$fichiersToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	$Parametres_Click={
		#TODO: Place custom script here
		
	}
	
	$utilisationToolStripMenuItem1_Click={
		#TODO: Place custom script here
		start ("https://github.com/dakhama-mehdi/Hyper-VEM/blob/master/How-TO-USE.md")
	}
	
	$labelNom_Click={
		#TODO: Place custom script here
		
	}
	
	$francaisToolStripMenuItem_Click={
		#TODO: Place custom script here
		
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-fr.xml'))
		set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value FR
		
		tradmenu
		
	}
	
	$affichageToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	$quitterToolStripMenuItem_Click={
		#TODO: Place custom script here
		$formHyperVEM27.Close()
	}
	
	$Langue_Click={
		#TODO: Place custom script here
		
	}
	
	$fichiersToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	$affichageToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	$Parametres_Click={
		#TODO: Place custom script here
		
	}
	
	
	$combobox1_Click= {
		#TODO: Place custom script here
		}
	$carteRéseauToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	$okToolStripMenuItem_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		
		(get-vm $VMselect).NetworkAdapters | select -First 1 | Connect-VMNetworkAdapter -SwitchName $vswitch2.Text
	}
	
	
	$réseauActuelToolStripMenuItem_Click={
		#TODO: Place custom script here
	
		
	}
	
	$toolstriptextbox2_Click={
		#TODO: Place custom script here
		
	}
	
	$toolstripcombobox1_Click={
		#TODO: Place custom script here
	
	}
	
	$réseauToolStripMenuItem_Click={
		#TODO: Place custom script here
		
		if ($textbox2.Text -eq "1")
		{
			& $buttonVswitch_Click
			$textbox2.Text = "2"
		}
		$localhost = $textbox1.Text
		$Netadap1.Visible = $false
		$Netadap2.Visible = $false
		$Netadap3.Visible = $false
		$Netadap4.Visible = $false
		$Netadap1.Text = $null
		$Netadap2.Text = $null
		$Netadap3.Text = $null
		$Netadap4.Text = $null
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		$lan = (get-vm $VMselect -computername $localhost).NetworkAdapters.switchname
		foreach ($obj in $lan)
		{
			if (!($Netadap1.text))
			{
				
				$Netadap1.Visible = $true
				if (!($obj))
				{
					$Netadap1.Text = "not connected"
				}
				else
				{
					$Netadap1.Text = $obj
				}
				$vswitch1.Visible = $false
				}
			elseif (!($Netadap2.text)) 	{
				$Netadap2.Visible = $true
				if (!($obj))
				{
					$Netadap2.Text = "not connected"
				}
				else
				{
					$Netadap2.Text = $obj
				}
				$vswitch2.Visible = $false
			}
			elseif (!($Netadap3.text)) {
				$Netadap3.Visible = $true
				if (!($obj))
				{
					$Netadap3.Text = "not connected"
				}
				else
				{
					$Netadap3.Text = $obj
				}
				$vswitch3.Visible = $false
			}
			elseif (!($Netadap4.text))
			{
				$Netadap4.Visible = $true
				if (!($obj))
				{
					$Netadap4.Text = "not connected"
				}
				else
				{
					$Netadap4.Text = $obj
				}
				$vswitch4.Visible = $false
			}
		}
	}
	
	
	$Netadap1_Click={
		#TODO: Place custom script here
		$vswitch1.Visible = $true
	}
	
	$vswitch1_Click={
		#TODO: Place custom script here
		}
	
	$vswitchok_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[0] | Connect-VMNetworkAdapter -SwitchName $vswitch1.Text
		[System.Windows.Forms.MessageBox]::Show("connecter ", 'Vswitch')
	}
	
	$Netadap2_Click={
		#TODO: Place custom script here
		#$switch = (Get-VMNetworkAdapter -ManagementOS).name
		$vswitch2.Visible = $true
	}
	
	$Netadap3_Click={
		#TODO: Place custom script here
		$vswitch3.Visible = $true
	}
	
	$vswitch2_Click={
		#TODO: Place custom script here
		
	}
	
	$vswitchok2_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[1] | Connect-VMNetworkAdapter -SwitchName $vswitch2.Text
		[System.Windows.Forms.MessageBox]::Show("connecter ", 'Vswitch')
	}
	
	$disconnect1_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[0] | Disconnect-VMNetworkAdapter
	}
	
	$disconnect2_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[1] | Disconnect-VMNetworkAdapter
	}
	
	$disconnect3_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[2] | Disconnect-VMNetworkAdapter
	}
	
	$vswitchok3_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		#$VMselect = $datagridview1.SelectedRows[0].Cells[1].Value
		(Get-VMNetworkAdapter $VMselect)[2] | Connect-VMNetworkAdapter -SwitchName $vswitch3.Text
		[System.Windows.Forms.MessageBox]::Show("connecter ", 'Vswitch')
	}
	
	$textbox1_TextChanged={
		#TODO: Place custom script here
		
	}
	
	
	$hotkeyToolStripMenuItem_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
	
		if ($computenrame -eq $textbox1.Text)
		{
			$ComputerSystem = Get-WmiObject -Query "select * from Msvm_ComputerSystem where ElementName = '$VMselect'" -Namespace "root\virtualization\v2"
			$Keyboard = Get-WmiObject -Query "ASSOCIATORS OF {$($ComputerSystem.path.path)} WHERE resultClass = Msvm_Keyboard" -Namespace "root\virtualization\v2"
			$Keyboard.TypeCtrlAltDel()
		}
		else
		{
			Invoke-Command -ComputerName $textbox1.Text -ScriptBlock {
				$ComputerSystem = Get-WmiObject -Query "select * from Msvm_ComputerSystem where ElementName = '$using:var1'" -Namespace "root\virtualization\v2"
				$Keyboard = Get-WmiObject -Query "ASSOCIATORS OF {$($ComputerSystem.path.path)} WHERE resultClass = Msvm_Keyboard" -Namespace "root\virtualization\v2"
				$Keyboard.TypeCtrlAltDel()
			}
		}
	}
	
	$buttonPscheck_Click={
		#TODO: Place custom script here
		if (!$pshyperv)
		{
		}
		else
		{
			
			sleep 2
			
			$message = $xmldata.action.AutorizHV.InnerText
				$result = [System.Windows.Forms.MessageBox]::Show("$message", 'Acces Hyper-V', 'OKCancel')
			
			if ($result -eq "OK")
			{
				Start-Process powershell -Verb runAs -ArgumentList {
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowDefaultCredentials -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowDefaultCredentialsDomain -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowDefaultCredentials -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowDefaultCredentialsDomain -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowFreshCredentials -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowFreshCredentialsDomain -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowFreshCredentialsWhenNTLMOnly -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowFreshCredentialsWhenNTLMOnlyDomain -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowSavedCredentials -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowSavedCredentialsDomain -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
					New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\Credssp\PolicyDefaults\AllowSavedCredentialsWhenNTLMOnly -Name Hyper-V -PropertyType String -Value 'Microsoft Virtual Console Service/*' -Force
				} -WindowStyle Hidden -Wait 
			}
			Show-Agree_psf
			
		}
	}
	
	$aideToolStripMenuItem_Click={
		#TODO: Place custom script here
		
	}
	
	
	$groupboxSettings_Enter={
		#TODO: Place custom script here
		
	}
	
	$vswitchToolStripMenuItem_Click= {
		#TODO: Place custom script here
		& $buttonVswitch_Click
	}
	
	$textbox2_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$textbox3_TextChanged={
		#TODO: Place custom script here
		$datagridview1.DataSource.DefaultView.RowFilter = "VM LIKE '*$($textbox3.Text)*'"
		
		foreach ($row in $datagridview1.rows)
		{
			
			if ($row.cells['state'].value -eq '6')
			{
				$row.Cells['column1'].Style.BackColor = 'Yellow'
			}
			elseif ($row.cells['state'].value -eq '2')
			{
				$row.Cells['column1'].Style.BackColor = 'green'
			}
		}
	
	}
	
	
	$textbox4_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$textbox5_TextChanged={
		#TODO: Place custom script here
		
	}
	
	$datagridview1_CellMouseEnter=[System.Windows.Forms.DataGridViewCellEventHandler]{
	#Event Argument: $_ = [System.Windows.Forms.DataGridViewCellEventArgs]
		#TODO: Place custom script here
		
		
		if ((get-vm  $datagridview1.SelectedCells[0].Value).state -eq "Running")
		{
			get-vm  $datagridview1.SelectedCells[0].Value | Select-Object State, CPUUsage, @{ n = "RAM"; e = { $_.MemoryAssigned/1MB } }, @{ n = "Uptime"; e = { $_.uptime } } | ForEach-Object {
				$datagridview1.SelectedCells[0].ToolTipText = "CPU % : " + $_.cpuusage + "`r`n" + "RAM : " + $_.ram + "`r`n" + "Uptime : " + $_.uptime.hours + ":" + $_.uptime.minutes
			}
		}
	}
	
	$toolstriptextbox1_Click={
		#TODO: Place custom script here
		
	}
	
	$vswitch4_Click={
		#TODO: Place custom script here
		
	}
	
	$vswitchok4_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		(Get-VMNetworkAdapter $VMselect)[3] | Connect-VMNetworkAdapter -SwitchName $vswitch4.Text
		[System.Windows.Forms.MessageBox]::Show("connecter ", 'Vswitch')
	}
	
	$disconnect4_Click={
		#TODO: Place custom script here
		$VMselect = $datagridview1.SelectedCells[0].Value
		(Get-VMNetworkAdapter $VMselect)[3] | Disconnect-VMNetworkAdapter
	}
	
	$Netadap4_Click={
		#TODO: Place custom script here
		$vswitch4.Visible = $true
	}
	
	$brzeliToolStripMenuItem_Click={
		#TODO: Place custom script here
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-pt-br.xml'))
		Set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value PT
		
		tradmenu
	}
	
	
	$copyClipboardToolStripMenuItem_Click={
		#TODO: Place custom script here
		
		$VMselect = $datagridview1.SelectedCells[0].Value
		
		$ComputerSystem = Get-WmiObject -Query "select * from Msvm_ComputerSystem where ElementName = '$VMselect'" -Namespace "root\virtualization\v2"
		
		$Keyboard = Get-WmiObject -Query "ASSOCIATORS OF {$($ComputerSystem.path.path)} WHERE resultClass = Msvm_Keyboard" -Namespace "root\virtualization\v2"
		
		$i = 0
		
		Get-Clipboard | ForEach-Object {
			
			
			if ($i -eq 0)
			{
				$i++
			}
			else
			{
				$Keyboard.TypeKey(0x0D)
			}
			$Keyboard.TypeText($_)
		}
	}
	
	$copyFilesToolStripMenuItem_Click={
		#TODO: Place custom script here
	
		$VMselect = $datagridview1.SelectedCells[0].Value
		$openfiledialog1.Title = 'Selec Files to Copy'
		$openfiledialog1.FileName = ''
		$openfiledialog1.ShowDialog()
			
		$des = "C:\Temp\" + ($openfiledialog1.FileName.Split('\')[-1])
		
		Copy-VMFile	"$VMselect" -SourcePath $openfiledialog1.FileName -DestinationPath $des -CreateFullPath -FileSource Host -Force -ErrorVariable retour -ErrorAction SilentlyContinue
		
		if ($retour)
		{
			[System.Windows.Forms.MessageBox]::Show($retour, 'error', 'ok', 'error')
			
		}
		
	}
	
	$chinaToolStripMenuItem_Click={
		#TODO: Place custom script here
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-ch.xml'))
		Set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value "ch"
		
		tradmenu
	}
	
	$italiaToolStripMenuItem_Click={
		#TODO: Place custom script here
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-it.xml'))
		Set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value "IT"
		
		tradmenu
	}
	
	$spainToolStripMenuItem_Click={
		#TODO: Place custom script here
		$script:xmldata = $null
		
		$script:xmldata = [xml] (Get-Content -Encoding UTF8 ($instaldir + '\language-es.xml'))
		Set-ItemProperty HKCU:\SOFTWARE\HV-MAN\HV-MAN-V2\ -Name langage -Value "ES"
		
		tradmenu
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formHyperVEM27.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:VM_mehdi_2_x_datagridview1 = $datagridview1.SelectedCells
		$script:VM_mehdi_2_x_vmIDTextBox = $vmIDTextBox.Text
		$script:VM_mehdi_2_x_textbox1 = $textbox1.Text
		$script:VM_mehdi_2_x_textbox2 = $textbox2.Text
		$script:VM_mehdi_2_x_textbox3 = $textbox3.Text
		$script:VM_mehdi_2_x_richtextbox1 = $richtextbox1.Text
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$formHyperVEM27.remove_Load($formHyperVEM27_Load)
			$formHyperVEM27.remove_Shown($buttonPscheck_Click)
			$buttonListerLesVMs.remove_Click($buttonListerLesVMs_Click)
			$datagridview1.remove_CellContentClick($datagridview1_CellContentClick)
			$datagridview1.remove_CellMouseEnter($datagridview1_CellMouseEnter)
			$vmIDTextBox.remove_TextChanged($vmIDTextBox_TextChanged)
			$contextmenustrip1.remove_Opening($contextmenustrip1_Opening)
			$demarrerVMToolStripMenuItem.remove_Click($demarrerVMToolStripMenuItem_Click)
			$arreterVMToolStripMenuItem.remove_Click($arreterVMToolStripMenuItem_Click)
			$enregistrerEtatToolStripMenuItem.remove_Click($enregistrerEtatToolStripMenuItem_Click)
			$eteindreLaVMToolStripMenuItem.remove_Click($eteindreLaVMToolStripMenuItem_Click)
			$menustrip1.remove_ItemClicked($menustrip1_ItemClicked)
			$fichiersToolStripMenuItem.remove_Click($fichiersToolStripMenuItem_Click)
			$affichageToolStripMenuItem.remove_Click($affichageToolStripMenuItem_Click)
			$Parametres.remove_Click($Parametres_Click)
			$adapteraLecranToolStripMenuItem.remove_Click($adapteraLecranToolStripMenuItem_Click)
			$affichageFixeToolStripMenuItem.remove_Click($affichageFixeToolStripMenuItem_Click)
			$Langue.remove_Click($Langue_Click)
			$quitterToolStripMenuItem.remove_Click($quitterToolStripMenuItem_Click)
			$aideToolStripMenuItem.remove_Click($aideToolStripMenuItem_Click)
			$utilisationToolStripMenuItem1.remove_Click($utilisationToolStripMenuItem1_Click)
			$aproposToolStripMenuItem2.remove_Click($aproposToolStripMenuItem2_Click)
			$francaisToolStripMenuItem.remove_Click($francaisToolStripMenuItem_Click)
			$englishToolStripMenuItem.remove_Click($englishToolStripMenuItem_Click)
			$réseauToolStripMenuItem.remove_Click($réseauToolStripMenuItem_Click)
			$Netadap1.remove_Click($Netadap1_Click)
			$vswitch1.remove_Click($vswitch1_Click)
			$vswitchok.remove_Click($vswitchok_Click)
			$Netadap2.remove_Click($Netadap2_Click)
			$Netadap3.remove_Click($Netadap3_Click)
			$vswitch2.remove_Click($vswitch2_Click)
			$vswitchok2.remove_Click($vswitchok2_Click)
			$vswitchok3.remove_Click($vswitchok3_Click)
			$disconnect1.remove_Click($disconnect1_Click)
			$disconnect2.remove_Click($disconnect2_Click)
			$disconnect3.remove_Click($disconnect3_Click)
			$textbox1.remove_TextChanged($textbox1_TextChanged)
			$hotkeyToolStripMenuItem.remove_Click($hotkeyToolStripMenuItem_Click)
			$buttonPscheck.remove_Click($buttonPscheck_Click)
			$vswitchToolStripMenuItem.remove_Click($vswitchToolStripMenuItem_Click)
			$textbox2.remove_TextChanged($textbox2_TextChanged)
			$textbox3.remove_TextChanged($textbox3_TextChanged)
			$Netadap4.remove_Click($Netadap4_Click)
			$vswitch4.remove_Click($vswitch4_Click)
			$vswitchok4.remove_Click($vswitchok4_Click)
			$disconnect4.remove_Click($disconnect4_Click)
			$brzeliToolStripMenuItem.remove_Click($brzeliToolStripMenuItem_Click)
			$copyClipboardToolStripMenuItem.remove_Click($copyClipboardToolStripMenuItem_Click)
			$copyFilesToolStripMenuItem.remove_Click($copyFilesToolStripMenuItem_Click)
			$chinaToolStripMenuItem.remove_Click($chinaToolStripMenuItem_Click)
			$italiaToolStripMenuItem.remove_Click($italiaToolStripMenuItem_Click)
			$spainToolStripMenuItem.remove_Click($spainToolStripMenuItem_Click)
			$formHyperVEM27.remove_Load($Form_StateCorrection_Load)
			$formHyperVEM27.remove_Closing($Form_StoreValues_Closing)
			$formHyperVEM27.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formHyperVEM27.SuspendLayout()
	$splitcontainer1.SuspendLayout()
	$contextmenustrip1.SuspendLayout()
	$menustrip1.SuspendLayout()
	#
	# formHyperVEM27
	#
	$formHyperVEM27.Controls.Add($splitcontainer1)
	$formHyperVEM27.AutoScaleDimensions = '96, 96'
	$formHyperVEM27.AutoScaleMode = 'Dpi'
	$formHyperVEM27.BackColor = 'Control'
	$formHyperVEM27.ClientSize = '1370, 749'
	$formHyperVEM27.ForeColor = 'Desktop'
	#region Binary Data
	$formHyperVEM27.icon = [system.drawing.icon]($instaldir + 'hvem.ico')
	#endregion
	$formHyperVEM27.MainMenuStrip = $menustrip1
	$formHyperVEM27.Margin = '8, 8, 8, 8'
	$formHyperVEM27.Name = 'formHyperVEM27'
	$formHyperVEM27.Text = 'Hyper-VEM  2.7'
	$formHyperVEM27.add_Load($formHyperVEM27_Load)
	$formHyperVEM27.add_Shown($buttonPscheck_Click)
	#
	# splitcontainer1
	#
	$splitcontainer1.ContextMenuStrip = $contextmenustrip1
	$splitcontainer1.Dock = 'Fill'
	$splitcontainer1.FixedPanel = 'Panel1'
	$splitcontainer1.Location = '0, 0'
	$splitcontainer1.Margin = '5, 5, 5, 5'
	$splitcontainer1.Name = 'splitcontainer1'
	$splitcontainer1.Panel1.BackColor = 'Gainsboro'
	[void]$splitcontainer1.Panel1.Controls.Add($richtextbox1)
	[void]$splitcontainer1.Panel1.Controls.Add($textbox3)
	[void]$splitcontainer1.Panel1.Controls.Add($textbox2)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonPscheck)
	[void]$splitcontainer1.Panel1.Controls.Add($label1)
	[void]$splitcontainer1.Panel1.Controls.Add($textbox1)
	[void]$splitcontainer1.Panel1.Controls.Add($vmIDTextBox)
	[void]$splitcontainer1.Panel1.Controls.Add($datagridview1)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonListerLesVMs)
	$splitcontainer1.Panel2.AutoScroll = $True
	$splitcontainer1.Panel2.BackColor = 'LightGray'
	$splitcontainer1.Panel2.BackgroundImageLayout = 'Center'
	[void]$splitcontainer1.Panel2.Controls.Add($menustrip1)
	$splitcontainer1.Panel2.Font = 'Microsoft Sans Serif, 9pt'
	$splitcontainer1.Panel2.ForeColor = 'Cornsilk'
	$splitcontainer1.Size = '1370, 749'
	$splitcontainer1.SplitterDistance = 151
	$splitcontainer1.TabIndex = 0
	#
	# buttonListerLesVMs
	#
	$buttonListerLesVMs.Anchor = 'Top, Left, Right'
	$buttonListerLesVMs.BackColor = 'WhiteSmoke'
	$buttonListerLesVMs.Location = '3, 52'
	$buttonListerLesVMs.Name = 'buttonListerLesVMs'
	$buttonListerLesVMs.Size = '142, 25'
	$buttonListerLesVMs.TabIndex = 20
	$buttonListerLesVMs.Text = 'Lister les VMs'
	$buttonListerLesVMs.UseCompatibleTextRendering = $True
	$buttonListerLesVMs.UseVisualStyleBackColor = $False
	$buttonListerLesVMs.add_Click($buttonListerLesVMs_Click)
	#
	# datagridview1
	#
	$datagridview1.AllowUserToAddRows = $False
	$datagridview1.AllowUserToDeleteRows = $False
	$datagridview1.AllowUserToOrderColumns = $True
	$datagridview1.AllowUserToResizeRows = $False
	$datagridview1.Anchor = 'Top, Bottom, Left, Right'
	$datagridview1.AutoSizeColumnsMode = 'Fill'
	$datagridview1.AutoSizeRowsMode = 'AllCells'
	$datagridview1.BackgroundColor = 'Gainsboro'
	$datagridview1.BorderStyle = 'None'
	$datagridview1.ColumnHeadersBorderStyle = 'Single'
	$datagridview1.ColumnHeadersHeightSizeMode = 'AutoSize'
	[void]$datagridview1.Columns.Add($Column1)
	$datagridview1.ContextMenuStrip = $contextmenustrip1
	$datagridview1.Cursor = 'Hand'
	$System_Windows_Forms_DataGridViewCellStyle_1 = New-Object 'System.Windows.Forms.DataGridViewCellStyle'
	$System_Windows_Forms_DataGridViewCellStyle_1.Alignment = 'MiddleLeft'
	$System_Windows_Forms_DataGridViewCellStyle_1.BackColor = 'Window'
	$System_Windows_Forms_DataGridViewCellStyle_1.Font = 'Microsoft Sans Serif, 8.25pt'
	$System_Windows_Forms_DataGridViewCellStyle_1.ForeColor = 'Desktop'
	$System_Windows_Forms_DataGridViewCellStyle_1.SelectionBackColor = 'Highlight'
	$System_Windows_Forms_DataGridViewCellStyle_1.SelectionForeColor = 'HighlightText'
	$System_Windows_Forms_DataGridViewCellStyle_1.WrapMode = 'False'
	$datagridview1.DefaultCellStyle = $System_Windows_Forms_DataGridViewCellStyle_1
	$datagridview1.GridColor = 'ActiveCaptionText'
	$datagridview1.Location = '3, 109'
	$datagridview1.MultiSelect = $False
	$datagridview1.Name = 'datagridview1'
	$datagridview1.ReadOnly = $True
	$datagridview1.RightToLeft = 'No'
	$datagridview1.RowHeadersVisible = $False
	$datagridview1.SelectionMode = 'CellSelect'
	$datagridview1.Size = '145, 359'
	$datagridview1.TabIndex = 22
	$datagridview1.add_CellContentClick($datagridview1_CellContentClick)
	$datagridview1.add_CellMouseEnter($datagridview1_CellMouseEnter)
	#
	# vmIDTextBox
	#
	$vmIDTextBox.Location = '9, 636'
	$vmIDTextBox.Name = 'vmIDTextBox'
	$vmIDTextBox.Size = '57, 20'
	$vmIDTextBox.TabIndex = 23
	$vmIDTextBox.Visible = $False
	$vmIDTextBox.add_TextChanged($vmIDTextBox_TextChanged)
	#
	# contextmenustrip1
	#
	$contextmenustrip1.BackColor = 'Control'
	[void]$contextmenustrip1.Items.Add($demarrerVMToolStripMenuItem)
	[void]$contextmenustrip1.Items.Add($arreterVMToolStripMenuItem)
	[void]$contextmenustrip1.Items.Add($enregistrerEtatToolStripMenuItem)
	[void]$contextmenustrip1.Items.Add($eteindreLaVMToolStripMenuItem)
	[void]$contextmenustrip1.Items.Add($optionToolStripMenuItem)
	[void]$contextmenustrip1.Items.Add($réseauToolStripMenuItem)
	$contextmenustrip1.Name = 'contextmenustrip1'
	$contextmenustrip1.ShowItemToolTips = $False
	$contextmenustrip1.Size = '160, 120'
	$contextmenustrip1.Text = 'df'
	$contextmenustrip1.add_Opening($contextmenustrip1_Opening)
	#
	# demarrerVMToolStripMenuItem
	#
	$demarrerVMToolStripMenuItem.BackColor = 'ButtonFace'
	#region Binary Data
	$demarrerVMToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'start.ico')
	#endregion
	$demarrerVMToolStripMenuItem.Name = 'demarrerVMToolStripMenuItem'
	$demarrerVMToolStripMenuItem.Size = '159, 22'
	$demarrerVMToolStripMenuItem.Text = 'Demarrer la VM'
	$demarrerVMToolStripMenuItem.add_Click($demarrerVMToolStripMenuItem_Click)
	#
	# arreterVMToolStripMenuItem
	#
	#region Binary Data
	$arreterVMToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'stop.ico')
	#endregion
	$arreterVMToolStripMenuItem.Name = 'arreterVMToolStripMenuItem'
	$arreterVMToolStripMenuItem.Size = '159, 22'
	$arreterVMToolStripMenuItem.Text = 'Arreter la VM'
	$arreterVMToolStripMenuItem.add_Click($arreterVMToolStripMenuItem_Click)
	#
	# enregistrerEtatToolStripMenuItem
	#
	#region Binary Data
	$enregistrerEtatToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'save.ico')
	#endregion
	$enregistrerEtatToolStripMenuItem.Name = 'enregistrerEtatToolStripMenuItem'
	$enregistrerEtatToolStripMenuItem.Size = '159, 22'
	$enregistrerEtatToolStripMenuItem.Text = 'Enregistrer l''etat'
	$enregistrerEtatToolStripMenuItem.add_Click($enregistrerEtatToolStripMenuItem_Click)
	#
	# eteindreLaVMToolStripMenuItem
	#
	#region Binary Data
	$eteindreLaVMToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'shutdown.ico')
	#endregion
	$eteindreLaVMToolStripMenuItem.Name = 'eteindreLaVMToolStripMenuItem'
	$eteindreLaVMToolStripMenuItem.Size = '159, 22'
	$eteindreLaVMToolStripMenuItem.Text = 'Eteindre la VM'
	$eteindreLaVMToolStripMenuItem.add_Click($eteindreLaVMToolStripMenuItem_Click)
	#
	# menustrip1
	#
	$menustrip1.BackColor = 'LightGray'
	$menustrip1.GripStyle = 'Visible'
	[void]$menustrip1.Items.Add($fichiersToolStripMenuItem)
	[void]$menustrip1.Items.Add($affichageToolStripMenuItem)
	[void]$menustrip1.Items.Add($Parametres)
	[void]$menustrip1.Items.Add($hotkeyToolStripMenuItem)
	[void]$menustrip1.Items.Add($vswitchToolStripMenuItem)
	[void]$menustrip1.Items.Add($aideToolStripMenuItem)
	$menustrip1.Location = '0, 0'
	$menustrip1.Name = 'menustrip1'
	$menustrip1.RenderMode = 'System'
	$menustrip1.Size = '1215, 24'
	$menustrip1.TabIndex = 24
	$menustrip1.Text = 'menustrip1'
	$menustrip1.add_ItemClicked($menustrip1_ItemClicked)
	#
	# fichiersToolStripMenuItem
	#
	[void]$fichiersToolStripMenuItem.DropDownItems.Add($quitterToolStripMenuItem)
	$fichiersToolStripMenuItem.Name = 'fichiersToolStripMenuItem'
	$fichiersToolStripMenuItem.Size = '54, 20'
	$fichiersToolStripMenuItem.Text = 'Fichier'
	$fichiersToolStripMenuItem.add_Click($fichiersToolStripMenuItem_Click)
	#
	# affichageToolStripMenuItem
	#
	[void]$affichageToolStripMenuItem.DropDownItems.Add($adapteraLecranToolStripMenuItem)
	[void]$affichageToolStripMenuItem.DropDownItems.Add($affichageFixeToolStripMenuItem)
	$affichageToolStripMenuItem.Name = 'affichageToolStripMenuItem'
	$affichageToolStripMenuItem.Size = '70, 20'
	$affichageToolStripMenuItem.Text = 'Affichage'
	$affichageToolStripMenuItem.add_Click($affichageToolStripMenuItem_Click)
	#
	# Parametres
	#
	[void]$Parametres.DropDownItems.Add($Langue)
	[void]$Parametres.DropDownItems.Add($copyClipboardToolStripMenuItem)
	[void]$Parametres.DropDownItems.Add($copyFilesToolStripMenuItem)
	$Parametres.Name = 'Parametres'
	$Parametres.Size = '56, 20'
	$Parametres.Text = 'Option'
	$Parametres.add_Click($Parametres_Click)
	#
	# adapteraLecranToolStripMenuItem
	#
	$adapteraLecranToolStripMenuItem.Name = 'adapteraLecranToolStripMenuItem'
	$adapteraLecranToolStripMenuItem.Size = '197, 22'
	$adapteraLecranToolStripMenuItem.Text = 'Adapter à l''ecran (Beta)'
	$adapteraLecranToolStripMenuItem.add_Click($adapteraLecranToolStripMenuItem_Click)
	#
	# affichageFixeToolStripMenuItem
	#
	$affichageFixeToolStripMenuItem.Checked = $True
	$affichageFixeToolStripMenuItem.CheckState = 'Checked'
	$affichageFixeToolStripMenuItem.Name = 'affichageFixeToolStripMenuItem'
	$affichageFixeToolStripMenuItem.Size = '197, 22'
	$affichageFixeToolStripMenuItem.Text = 'Affichage fixe'
	$affichageFixeToolStripMenuItem.add_Click($affichageFixeToolStripMenuItem_Click)
	#
	# Langue
	#
	[void]$Langue.DropDownItems.Add($francaisToolStripMenuItem)
	[void]$Langue.DropDownItems.Add($englishToolStripMenuItem)
	[void]$Langue.DropDownItems.Add($brzeliToolStripMenuItem)
	[void]$Langue.DropDownItems.Add($chinaToolStripMenuItem)
	[void]$Langue.DropDownItems.Add($italiaToolStripMenuItem)
	[void]$Langue.DropDownItems.Add($spainToolStripMenuItem)
	$Langue.Name = 'Langue'
	$Langue.Size = '159, 22'
	$Langue.Text = 'Langue'
	$Langue.add_Click($Langue_Click)
	#
	# quitterToolStripMenuItem
	#
	$quitterToolStripMenuItem.Name = 'quitterToolStripMenuItem'
	$quitterToolStripMenuItem.Size = '111, 22'
	$quitterToolStripMenuItem.Text = 'Quitter'
	$quitterToolStripMenuItem.add_Click($quitterToolStripMenuItem_Click)
	#
	# aideToolStripMenuItem
	#
	[void]$aideToolStripMenuItem.DropDownItems.Add($utilisationToolStripMenuItem1)
	[void]$aideToolStripMenuItem.DropDownItems.Add($aproposToolStripMenuItem2)
	$aideToolStripMenuItem.Name = 'aideToolStripMenuItem'
	$aideToolStripMenuItem.Size = '43, 20'
	$aideToolStripMenuItem.Text = 'Aide'
	$aideToolStripMenuItem.add_Click($aideToolStripMenuItem_Click)
	#
	# utilisationToolStripMenuItem1
	#
	$utilisationToolStripMenuItem1.Name = 'utilisationToolStripMenuItem1'
	$utilisationToolStripMenuItem1.Size = '127, 22'
	$utilisationToolStripMenuItem1.Text = 'Utilisation'
	$utilisationToolStripMenuItem1.add_Click($utilisationToolStripMenuItem1_Click)
	#
	# aproposToolStripMenuItem2
	#
	$aproposToolStripMenuItem2.Font = 'Segoe UI, 9pt'
	$aproposToolStripMenuItem2.Name = 'aproposToolStripMenuItem2'
	$aproposToolStripMenuItem2.Size = '127, 22'
	$aproposToolStripMenuItem2.Text = 'Apropos'
	$aproposToolStripMenuItem2.add_Click($aproposToolStripMenuItem2_Click)
	#
	# francaisToolStripMenuItem
	#
	$francaisToolStripMenuItem.Checked = $True
	$francaisToolStripMenuItem.CheckState = 'Checked'
	#region Binary Data
	$francaisToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'fr.ico')
	#endregion
	$francaisToolStripMenuItem.Name = 'francaisToolStripMenuItem'
	$francaisToolStripMenuItem.Size = '117, 22'
	$francaisToolStripMenuItem.Text = 'Francais'
	$francaisToolStripMenuItem.add_Click($francaisToolStripMenuItem_Click)
	#
	# englishToolStripMenuItem
	#
	#region Binary Data
	$englishToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'usa.ico')
	#endregion
	$englishToolStripMenuItem.Name = 'englishToolStripMenuItem'
	$englishToolStripMenuItem.Size = '117, 22'
	$englishToolStripMenuItem.Text = 'English'
	$englishToolStripMenuItem.add_Click($englishToolStripMenuItem_Click)
	#
	# optionToolStripMenuItem
	#
	$optionToolStripMenuItem.Name = 'optionToolStripMenuItem'
	$optionToolStripMenuItem.Size = '156, 6'
	#
	# réseauToolStripMenuItem
	#
	[void]$réseauToolStripMenuItem.DropDownItems.Add($Netadap1)
	[void]$réseauToolStripMenuItem.DropDownItems.Add($Netadap2)
	[void]$réseauToolStripMenuItem.DropDownItems.Add($Netadap3)
	[void]$réseauToolStripMenuItem.DropDownItems.Add($Netadap4)
	$réseauToolStripMenuItem.Name = 'réseauToolStripMenuItem'
	$réseauToolStripMenuItem.Size = '159, 22'
	$réseauToolStripMenuItem.Text = 'Réseau'
	$réseauToolStripMenuItem.add_Click($réseauToolStripMenuItem_Click)
	#
	# Netadap1
	#
	[void]$Netadap1.DropDownItems.Add($vswitch1)
	[void]$Netadap1.DropDownItems.Add($vswitchok)
	[void]$Netadap1.DropDownItems.Add($disconnect1)
	$Netadap1.Name = 'Netadap1'
	$Netadap1.Size = '67, 22'
	$Netadap1.Visible = $False
	$Netadap1.add_Click($Netadap1_Click)
	#
	# vswitch1
	#
	$vswitch1.Name = 'vswitch1'
	$vswitch1.Size = '121, 23'
	$vswitch1.add_Click($vswitch1_Click)
	#
	# vswitchok
	#
	$vswitchok.Name = 'vswitchok'
	$vswitchok.Size = '181, 22'
	$vswitchok.Text = 'OK'
	$vswitchok.add_Click($vswitchok_Click)
	#
	# Netadap2
	#
	[void]$Netadap2.DropDownItems.Add($vswitch2)
	[void]$Netadap2.DropDownItems.Add($vswitchok2)
	[void]$Netadap2.DropDownItems.Add($disconnect2)
	$Netadap2.Name = 'Netadap2'
	$Netadap2.Size = '67, 22'
	$Netadap2.Visible = $False
	$Netadap2.add_Click($Netadap2_Click)
	#
	# Netadap3
	#
	[void]$Netadap3.DropDownItems.Add($vswitch3)
	[void]$Netadap3.DropDownItems.Add($vswitchok3)
	[void]$Netadap3.DropDownItems.Add($disconnect3)
	$Netadap3.Name = 'Netadap3'
	$Netadap3.Size = '67, 22'
	$Netadap3.Visible = $False
	$Netadap3.add_Click($Netadap3_Click)
	#
	# vswitch2
	#
	$vswitch2.Name = 'vswitch2'
	$vswitch2.Size = '121, 23'
	$vswitch2.add_Click($vswitch2_Click)
	#
	# vswitchok2
	#
	$vswitchok2.Name = 'vswitchok2'
	$vswitchok2.Size = '181, 22'
	$vswitchok2.Text = 'OK'
	$vswitchok2.add_Click($vswitchok2_Click)
	#
	# vswitch3
	#
	$vswitch3.Name = 'vswitch3'
	$vswitch3.Size = '121, 23'
	#
	# vswitchok3
	#
	$vswitchok3.Name = 'vswitchok3'
	$vswitchok3.Size = '181, 22'
	$vswitchok3.Text = 'OK'
	$vswitchok3.add_Click($vswitchok3_Click)
	#
	# disconnect1
	#
	$disconnect1.Name = 'disconnect1'
	$disconnect1.Size = '181, 22'
	$disconnect1.Text = 'Disconnect'
	$disconnect1.add_Click($disconnect1_Click)
	#
	# disconnect2
	#
	$disconnect2.Name = 'disconnect2'
	$disconnect2.Size = '181, 22'
	$disconnect2.Text = 'Disconnect'
	$disconnect2.add_Click($disconnect2_Click)
	#
	# disconnect3
	#
	$disconnect3.Name = 'disconnect3'
	$disconnect3.Size = '181, 22'
	$disconnect3.Text = 'Disconnect'
	$disconnect3.add_Click($disconnect3_Click)
	#
	# textbox1
	#
	$textbox1.Anchor = 'Top, Left, Right'
	$textbox1.Location = '3, 26'
	$textbox1.Name = 'textbox1'
	$textbox1.Size = '142, 20'
	$textbox1.TabIndex = 27
	$textbox1.add_TextChanged($textbox1_TextChanged)
	#
	# label1
	#
	$label1.Font = 'Microsoft Sans Serif, 8pt'
	$label1.Location = '3, 9'
	$label1.Name = 'label1'
	$label1.Size = '69, 15'
	$label1.TabIndex = 18
	$label1.Text = 'Serveur :'
	$label1.UseCompatibleTextRendering = $True
	#
	# hotkeyToolStripMenuItem
	#
	#region Binary Data
	$hotkeyToolStripMenuItem.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABGdBTUEAALGPC/xhBQAAAAlwSFlz
AAAOvAAADrwBlbxySQAAAhRJREFUOE+tkrmrWlEQxm8RQpIykE6wSWWXPyGthb2NbQJREQtbwTLw
OtFCcUEUXBBFEAURo7iigoq7eL0uuK8o3iAyOXPie0We4UHIwFfcO3PmfPM7w/z3iEQi79PptPBP
ud3uD7eSv4der/9YKBT2m80GlsslzOfzJ1Wr1bNCofh0K70fDw8P4nK5DOv1GlarFcxmMxiNRsBx
HJVUKv1yK70f2KBSqUCn04F8Pg/T6RSGwyH0ej3o9/svNyAjiNvtNtqFTCYDk8mE3tztdmEwGLzc
wG63i7F4t9s90+l0AplM9rxBIBD4TGwbUYR2GG9vNBpQr9fprWgfOaAb8hI/UqmUkXAyhkKh71qt
9h1jsVi6+/2e3oLgFosFpT4ejyEajf7MZrOA+e12Cwi4VqvRPDYlr/KNMRgMHB5EPSYQWKvVglgs
xudyOfofnxXBer1e6goll8s1jNls5orFIlitViAMnqjjKIlEgi+VSvQwfofDYTCZTEBGBYStVCo1
jNPp5PAjHo9Ti49vjy5IId9sNuF4PALLspBMJoFsKuA/HFGlUmkYn8/H4QG0iQt0OBzgfD7D5XJB
yzzOjACRDXLAZjzPw/V6BbVarWF0Ol2CgGQdDgdL3LAej4clTdlgMMiSxaqTEfs2m43mXS4XSxiw
fr+f5iUSyVdGJBK9FggEb+9JKBS+Qd3LocgWvPq9DP8cDPMLIrQRkNlmm14AAAAASUVORK5CYII=')
	#endregion
	$hotkeyToolStripMenuItem.Name = 'hotkeyToolStripMenuItem'
	$hotkeyToolStripMenuItem.Size = '73, 20'
	$hotkeyToolStripMenuItem.Text = 'Hotkey'
	$hotkeyToolStripMenuItem.add_Click($hotkeyToolStripMenuItem_Click)
	#
	# buttonPscheck
	#
	$buttonPscheck.Location = '9, 675'
	$buttonPscheck.Name = 'buttonPscheck'
	$buttonPscheck.Size = '75, 23'
	$buttonPscheck.TabIndex = 29
	$buttonPscheck.Text = 'pscheck'
	$buttonPscheck.UseCompatibleTextRendering = $True
	$buttonPscheck.UseVisualStyleBackColor = $True
	$buttonPscheck.Visible = $False
	$buttonPscheck.add_Click($buttonPscheck_Click)
	#
	# vswitchToolStripMenuItem
	#
	$vswitchToolStripMenuItem.Name = 'vswitchToolStripMenuItem'
	$vswitchToolStripMenuItem.Size = '60, 20'
	$vswitchToolStripMenuItem.Text = 'Vswitch'
	$vswitchToolStripMenuItem.add_Click($vswitchToolStripMenuItem_Click)
	#
	# textbox2
	#
	$textbox2.Location = '9, 445'
	$textbox2.Name = 'textbox2'
	$textbox2.Size = '25, 20'
	$textbox2.TabIndex = 30
	$textbox2.Text = '1'
	$textbox2.Visible = $False
	$textbox2.add_TextChanged($textbox2_TextChanged)
	#
	# textbox3
	#
	$textbox3.Anchor = 'Top, Bottom, Left, Right'
	$textbox3.Location = '3, 83'
	$textbox3.Name = 'textbox3'
	$textbox3.Size = '141, 20'
	$textbox3.TabIndex = 31
	$textbox3.add_TextChanged($textbox3_TextChanged)
	#
	# tooltip1
	#
	$tooltip1.ToolTipIcon = 'Info'
	#
	# richtextbox1
	#
	$richtextbox1.BackColor = 'Gainsboro'
	$richtextbox1.Dock = 'Bottom'
	$richtextbox1.Location = '0, 471'
	$richtextbox1.Name = 'richtextbox1'
	$richtextbox1.ReadOnly = $True
	$richtextbox1.Size = '151, 278'
	$richtextbox1.TabIndex = 32
	$richtextbox1.Text = ''
	#
	# Netadap4
	#
	[void]$Netadap4.DropDownItems.Add($vswitch4)
	[void]$Netadap4.DropDownItems.Add($vswitchok4)
	[void]$Netadap4.DropDownItems.Add($disconnect4)
	$Netadap4.Name = 'Netadap4'
	$Netadap4.Size = '67, 22'
	$Netadap4.add_Click($Netadap4_Click)
	#
	# vswitch4
	#
	$vswitch4.Name = 'vswitch4'
	$vswitch4.Size = '121, 23'
	$vswitch4.add_Click($vswitch4_Click)
	#
	# vswitchok4
	#
	$vswitchok4.Name = 'vswitchok4'
	$vswitchok4.Size = '181, 22'
	$vswitchok4.Text = 'OK'
	$vswitchok4.add_Click($vswitchok4_Click)
	#
	# disconnect4
	#
	$disconnect4.Name = 'disconnect4'
	$disconnect4.Size = '181, 22'
	$disconnect4.Text = 'Disconnect'
	$disconnect4.add_Click($disconnect4_Click)
	#
	# brzeliToolStripMenuItem
	#
	#region Binary Data
	$brzeliToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'Brazil.ico')
	#endregion
	$brzeliToolStripMenuItem.Name = 'brzeliToolStripMenuItem'
	$brzeliToolStripMenuItem.Size = '117, 22'
	$brzeliToolStripMenuItem.Text = 'Brazil'
	$brzeliToolStripMenuItem.add_Click($brzeliToolStripMenuItem_Click)
	#
	# copyClipboardToolStripMenuItem
	#
	
	$copyClipboardToolStripMenuItem.Name = 'copyClipboardToolStripMenuItem'
	$copyClipboardToolStripMenuItem.Size = '159, 22'
	$copyClipboardToolStripMenuItem.Text = 'Copy-Clipboard'
	$copyClipboardToolStripMenuItem.add_Click($copyClipboardToolStripMenuItem_Click)
	#
	# copyFilesToolStripMenuItem
	#

	$copyFilesToolStripMenuItem.Name = 'copyFilesToolStripMenuItem'
	$copyFilesToolStripMenuItem.Size = '159, 22'
	$copyFilesToolStripMenuItem.Text = 'Copy-Files'
	$copyFilesToolStripMenuItem.add_Click($copyFilesToolStripMenuItem_Click)
	#
	# openfiledialog1
	#
	$openfiledialog1.FileName = 'openfiledialog1'
	#
	# chinaToolStripMenuItem
	#
	#region Binary Data
	$chinaToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'China.ico')
	#endregion
	$chinaToolStripMenuItem.Name = 'chinaToolStripMenuItem'
	$chinaToolStripMenuItem.Size = '117, 22'
	$chinaToolStripMenuItem.Text = 'China'
	$chinaToolStripMenuItem.add_Click($chinaToolStripMenuItem_Click)
	#
	# italiaToolStripMenuItem
	#
	#region Binary Data
	$italiaToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'Italia.ico')
	#endregion
	$italiaToolStripMenuItem.Name = 'italiaToolStripMenuItem'
	$italiaToolStripMenuItem.Size = '117, 22'
	$italiaToolStripMenuItem.Text = 'Italia'
	$italiaToolStripMenuItem.add_Click($italiaToolStripMenuItem_Click)
	#
	# spainToolStripMenuItem
	#
	#region Binary Data
	$spainToolStripMenuItem.Image = [System.Drawing.Image]::FromFile($instaldir + 'Espana.ico')
	#endregion
	$spainToolStripMenuItem.Name = 'spainToolStripMenuItem'
	$spainToolStripMenuItem.Size = '117, 22'
	$spainToolStripMenuItem.Text = 'Spain'
	$spainToolStripMenuItem.add_Click($spainToolStripMenuItem_Click)
	#
	# Column1
	#
	$Column1.AutoSizeMode = 'ColumnHeader'
	$System_Windows_Forms_DataGridViewCellStyle_2 = New-Object 'System.Windows.Forms.DataGridViewCellStyle'
	$System_Windows_Forms_DataGridViewCellStyle_2.BackColor = 'WhiteSmoke'
	$System_Windows_Forms_DataGridViewCellStyle_2.ForeColor = 'Transparent'
	$System_Windows_Forms_DataGridViewCellStyle_2.SelectionBackColor = 'Transparent'
	$System_Windows_Forms_DataGridViewCellStyle_2.SelectionForeColor = 'Transparent'
	$Column1.DefaultCellStyle = $System_Windows_Forms_DataGridViewCellStyle_2
	$Column1.FillWeight = 15
	$Column1.HeaderText = '>'
	$Column1.MaxInputLength = 30
	$Column1.Name = 'Column1'
	$Column1.ReadOnly = $True
	$Column1.Width = 38
	$menustrip1.ResumeLayout()
	$contextmenustrip1.ResumeLayout()
	$splitcontainer1.ResumeLayout()
	$formHyperVEM27.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formHyperVEM27.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formHyperVEM27.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formHyperVEM27.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$formHyperVEM27.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $formHyperVEM27.ShowDialog()

}
#endregion Source: VM-mehdi-2-x.psf

#Start the application
Main ($CommandLine)
