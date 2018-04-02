configuration scorch
{
    Import-DscResource -ModuleName scorch

    node localhost
    {
        WindowsFeature InstallNetFramework
        {
            Ensure = 'Present'
            Name = 'Net-Framework-Core'
            Source = 'c:\2012r2_sxs\sxs'
        }

        WindowsFeature InstallIIS
        {
            Ensure = 'Present'
            Name = 'web-server'
        }

        WindowsFeature InstallHTTPActivation
        {
            Ensure = 'Present'
            Name = 'NET-WCF-HTTP-Activation45'
        }

        SCORCHInstall InstallScorch
        {
            Ensure = 'Present'
            ProductKey = $node.ProductKey
            ServiceUserCredential = $node.serviceAccount
            SetupCredential = $node.setupAccount
            Components = 'All'
            DatabaseServer = 'SQL1\SCORCH'
            RemoteAccess = $true
            UseMicrosoftUpdate = $false
            EnableTelemetryReporting = $false
            ErrorReporting = 'never'
            SourceFolder = 'c:\temp\scorch'
            Description = 'My SCORCH Install'
            DependsOn = '[WindowsFeature]InstallNetFramework', '[WindowsFeature]InstallHTTPActivation', '[WindowsFeature]InstallIIS'
        }
    }
}