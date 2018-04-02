
Import-Module $PSScriptRoot\..\..\xPDT.psm1

function Get-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Collections.Hashtable])]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Description,

        [parameter(Mandatory = $true)]
        [System.String]
        $ProductKey,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $ServiceUserCredential,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SetupCredential,

        [parameter(Mandatory = $true)]
        [ValidateSet("ManagementServer","RunbookServer","WebComponents","All")]
        [System.String]
        $Components,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [parameter()]
        [System.Management.Automation.PSCredential]
        $DatabaseUserCredential,

        [parameter(Mandatory = $true)]
        [System.String]
        $SourceFolder
    )

    $returnValue = @{
        Description = $Description
        Ensure = $Ensure
        ProductKey = $ProductKey
        Components = $Components
        InstallDirectory = $InstallDir
        DatabaseServer = $DatabaseServer
        SourceFolder = $SourceFolder
    }

    $returnValue  
}


function Set-TargetResource
{
    [CmdletBinding()]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Description,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure,

        [parameter(Mandatory = $true)]
        [System.String]
        $ProductKey,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $ServiceUserCredential,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SetupCredential,

        [parameter(Mandatory = $true)]
        [ValidateSet("ManagementServer","RunbookServer","WebComponents","All")]
        [System.String]
        $Components,

        [System.String]
        $InstallDirectory,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [System.String]
        $DatabaseName = 'Orchestrator',

        [parameter()]
        [System.Management.Automation.PSCredential]
        $DatabaseUserCredential,

        [System.String]
        $WebConsolePort = '82',

        [System.String]
        $WebServicePort = '81',

        [System.String]
        $OrchestratorUserGroupSID,

        [System.Boolean]
        $RemoteAccess,

        [System.Boolean]
        $UseMicrosoftUpdate,

        [System.Boolean]
        $EnableTelemetryReporting,

        [ValidateSet("always", "queued", "never")]        
        [System.String]
        $ErrorReporting = "always",

        [parameter(Mandatory = $true)]
        [System.String]
        $SourceFolder
    )

    #Write-Verbose "Use this cmdlet to deliver information about command processing."

    #Write-Debug "Use this cmdlet to write debug information while troubleshooting."

    #Include this line if the resource requires a system reboot.
    #$global:DSCMachineStatus = 1

    $PathToSetup = Join-Path $SourceFolder -ChildPath 'Setup\Setup.exe'
    $Installer = ResolvePath $PathToSetup

    if ($Ensure -eq 'Present')
    {
        $InstallString = [System.Collections.ArrayList]::new()

        $null = $InstallString.Add('/Silent') 
        $null = $InstallString.Add("/Key:$ProductKey")
        $null = $InstallString.Add("/ServiceUserName:$($ServiceUserCredential.UserName)")
        $null = $InstallString.Add("/ServicePassword:$($ServiceUserCredential.GetNetworkCredential().Password)")
        $null = $InstallString.Add("/Components:$Components")
        $null = $InstallString.Add("/DbServer:$DatabaseServer")
        $null = $InstallString.Add("/DbNameNew:$DatabaseName")
        $null = $InstallString.Add("/WebServicePort:$WebServicePort")
        $null = $InstallString.Add("/WebConsolePort:$WebConsolePort")
        $null = $InstallString.Add("/EnableErrorReporting:$ErrorReporting")

        if ($DatabaseUserCredential)
        {
            $null = $InstallString.Add("/DbUser:$($DatabaseUserCredential.UserName)")
            $null = $InstallString.Add("/DbPassword:$($DatabaseUserCredential.GetNetworkCredential().Password)")
        }

        if ($InstallDirectory)
        {
            $null = $InstallString.Add("/InstallDir:$InstallDirectory")            
        }

        if ($OrchestratorUserGroupSID)
        {
            $null = $InstallString.Add("/OrchestratorUsersGroup:$OrchestratorUserGroupSID")
        }

        if ($RemoteAccess)
        {
            $null = $InstallString.Add("/OrchestratorRemote")
        }

        if ($UseMicrosoftUpdate)
        {
            $null = $InstallString.Add("/UseMicrosoftUpdate:1")
        }
        else
        {
            $null = $InstallString.Add("/UseMicrosoftUpdate:0")
        }

        if ($EnableTelemetryReporting)
        {
            $null = $InstallString.Add("/SendCEIPReports:0")
        }
        else
        {
            $null = $InstallString.Add("/SendCEIPReports:1")
        }

        $FinalInstallString = $InstallString -join ' '
        Write-Verbose "Install is $Installer"
        Write-Verbose "Installing with the install string: $FinalInstallString"
        if ($PsDscContext.RunAsUser) 
        {
            Write-Verbose "User: $($PsDscContext.RunAsUser)"
            $PsDscContext
        }

        $Process = StartWin32Process -Path $Installer -Arguments $FinalInstallString -Credential $SetupCredential -AsTask
        Write-Verbose $Process
        WaitForWin32ProcessEnd -Path $Installer -Arguments $FinalInstallString -Credential $SetupCredential
    }
    elseif ($Ensure -eq 'Absent')
    {
        $Arguments = "/Silent /Uninstall"
        $Process = StartWin32Process -Path $Installer -Arguments $Arguments -Credential $SetupCredential -AsTask
        Write-Verbose $Process
        WaitForWin32ProcessEnd -Path $Installer -Arguments $Arguments -Credential $SetupCredential
    }
}


function Test-TargetResource
{
    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param
    (
        [parameter(Mandatory = $true)]
        [System.String]
        $Description,

        [ValidateSet("Present","Absent")]
        [System.String]
        $Ensure,

        [parameter(Mandatory = $true)]
        [System.String]
        $ProductKey,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $ServiceUserCredential,

        [parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SetupCredential,

        [parameter(Mandatory = $true)]
        [ValidateSet("ManagementServer","RunbookServer","WebComponents","All")]
        [System.String]
        $Components,

        [System.String]
        $InstallDirectory,

        [parameter(Mandatory = $true)]
        [System.String]
        $DatabaseServer,

        [System.String]
        $DatabaseName,

        [parameter()]
        [System.Management.Automation.PSCredential]
        $DatabaseUserCredential,

        [System.String]
        $WebConsolePort,

        [System.String]
        $WebServicePort,

        [System.String]
        $OrchestratorUserGroupSID,

        [System.Boolean]
        $RemoteAccess,

        [System.Boolean]
        $UseMicrosoftUpdate,

        [System.Boolean]
        $EnableTelemetryReporting,

        [ValidateSet("always", "queued", "never")]        
        [System.String]
        $ErrorReporting = 'always',

        [parameter(Mandatory = $true)]
        [System.String]
        $SourceFolder
    )

    $OrchestratorComponents = Get-CimInstance -ClassName Win32_Product -Filter "name like 'System Center 2012 Orchestrator%'"

    $roles = @{
        MgmtServer = "System Center 2012 Orchestrator Management Server"
        WebServer = "System Center 2012 Orchestrator Web Features"
        RunbookServer = "System Center 2012 Orchestrator Runbook Server"
        RunbookDesigner = "System Center 2012 Orchestrator Runbook Designer"
    }

    # All | ManagementServer | RunbookServer | WebComponents )
    $IsInstalled = $null

    Write-Verbose "Checking to see if compontents ($Components) is installed."
    if ($Components -eq 'All')
    {
        $IsInstalled = $OrchestratorComponents.Name -contains $roles.RunbookServer -and
                       $OrchestratorComponents.Name -contains $roles.WebServer -and
                       $OrchestratorComponents.Name -contains $roles.RunbookDesigner -and
                       $OrchestratorComponents.Name -contains $roles.MgmtServer
    }
    elseif ($Components -eq 'ManagementServer')
    {
        $IsInstalled = $OrchestratorComponents.Name -contains $roles.MgmtServer
    }
    elseif ($Components -eq 'RunbookServer')
    {
        $IsInstalled = $OrchestratorComponents.Name -contains $roles.RunbookServer
    }
    elseif ($Components -eq 'RunbookDesigner')
    {
        $IsInstalled = $OrchestratorComponents.Name -contains $roles.RunbookDesigner
    }
    elseif ($Components -eq 'WebComponents')
    {
        $IsInstalled = $OrchestratorComponents.Name -contains $roles.WebServer
    }
    
    if ($Ensure -eq 'Present')
    {
        Write-Verbose "Returning result for Present state ($IsInstalled)"
        return $IsInstalled
    }

    Write-Verbose "Returning result for Absent state $(-not $IsInstalled))"
    return (-not $IsInstalled)
}

Export-ModuleMember -Function *-TargetResource
