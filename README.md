
# SCORCH

The **SCORCH** module contains DSC resources for installing System Center Orchestrator 2012 R2:

## Resources

* **SCORCHInstall** Installs System Center Orchestrator server roles.

### SCORCHInstall

* **Ensure**: Ensures that an SCORCH server is _Absent_ or _Present_. 
* **Description**: (Key) A description to identify the SCORCH installation.
* **SetupCredential**: (Required) A PS Credential that has administrative permissions to install SCORCH and configure the database
* **ServiceUserCredential**: (Required) Credential that will be used as the Orchestrator service account.
* **SourceFolder**: (Required) The path to the root of the installation source (SCORCH Install Media).
* **Components**: (Required) Specify the server roles to install.  Valid values are ( All | ManagementServer | RunbookServer | WebComponents )
* **DatabaseServer**: (Required) Specify the name of the database server and instance (if applicable).
* **DatabaseName**: (Optional) The name of the database to be created or used.  Default is _Orchestrator_
* **DatabaseUserCredential**: (Optional) The Credential to connect to the Database server.  This is only used for SQL Authenticaiton.  Omit this when using Windows Authentication to connect to the database server.
* **WebConsolePort**: (Optional) The port on which the web console will run.  Default is _82_
* **WebServicePort**: (Optional) The port on which the web services will run.  Default is _81_
* **OrchestratorUserGroupSID**: (Optional) Specifies the SID of the domain or local group that will be granted access to Management server. If no value is specified, the default local group is used.
* **RemoteAccess**: (Optional) Specifies that remote access should be granted to the Runbook Designer
* **UseMircosoftUpdate**: (Optional) Specifies whether to opt in for Microsoft Update. _True_ will opt in. _False_ does not change the current opt in status of the computer.
* **EnableTelemetryReporting**: (Optional) Specifies Orchestrator to send Diagnostics and Usage data to Microsoft. False will opt-out from sending Telemetry. Telemetry is on by default.
* **ErrorReporting**: (Optional) Specifies that Orchestrator should send program error reports to Microsoft. Possible values are ( always | queued | never ).
* **InstallDirectory**: (Optional) The installation directory. Defaults to _C:\Program Files (x86)\Microsoft System Center \Orchestrator_

## ChangeLog
