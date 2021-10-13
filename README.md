# Windows-PowerShell
1. What is PowerShell?

    PowerShell is a task automation and configuration management program from Microsoft, consisting of a command-line shell and the associated scripting language which is built     on .NET Core formerly developed as a windows component only.

2. Start working with PowerShell.

    It is always recommended to start PowerShell with elevated permission to gain Administrator privelege. To do so identify the installation location of the PowerShell, right-     click on the Windows PowerShell, click on Advanced, and make a tick on Run as administrator as shown below.

    ![image](https://user-images.githubusercontent.com/55215524/136864038-0d1ee1c2-1c05-46c0-84f5-de0d3afc597b.png)

3. PowerShell Execution Policy.

    PowerShell's execution policy is a safety feature that controls the conditions under which PowerShell loads configuration files and runs scripts. This feature helps prevent     the execution of malicious scripts.

    ![image](https://user-images.githubusercontent.com/55215524/137039957-31c9f09f-d0f3-4690-81a0-8471cdd3ec0d.png)

    ![image](https://user-images.githubusercontent.com/55215524/137040679-a47971f9-60ff-495f-bb23-7d912801d1d6.png)

    To get all execution policies in the current session

    Get-ExecutionPolicy -List

    ![image](https://user-images.githubusercontent.com/55215524/137041475-785576cd-06c7-4dca-91a6-7b20dc91afe0.png)

    To set the execution policy 

    Set-ExecutionPolicy -ExecutionPolicy “ExecutionPolicy” -Scope “Scope”

4. To get the current PowerShell version type the following commands.

    Local Computer -  $PSVersionTable <br />
    Remote Computer - Invoke-Command -Computername client001 -Scriptblock {$PSVersionTable.psversion}

5. Powershell data types.

    [string]    Fixed-length string of Unicode characters <br />
    [char]      A Unicode 16-bit character <br />
    [byte]      An 8-bit unsigned character <br />
    [int]       32-bit signed integer <br />
    [long]      64-bit signed integer <br />
    [bool]      Boolean True/False value <br />
    [decimal]   A 128-bit decimal value <br />
    [single]    Single-precision 32-bit floating point number <br />
    [double]    Double-precision 64-bit floating point number <br />
    [DateTime]  Date and Time <br />
    [xml]       Xml object <br />
    [array]     An array of values <br />
    [hashtable] Hashtable object <br />

    Variable declaration examples.
    
    [string]$abc = "Hello World" <br />
    [int32]$one = 10 <br />
    [decimal]$dec = 23.444 <br />
    [datetime]$date = Get-Date <br />




