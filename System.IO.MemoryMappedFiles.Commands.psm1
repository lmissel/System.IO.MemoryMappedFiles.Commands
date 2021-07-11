# -----------------------------------------------
# Module: System.IO.MemoryMappedFiles.Commands
# 
# This PowerShell module provides functions for so-called memory dump files. Memory dump files allow programmers to work with very large files because the memory can be managed simultaneously. Memory dump files can also be used by multiple processes, allowing data to be shared across multiple PowerShell instances using memory dump files.
# 
# Similarly, reading of existing files is possible, which allows faster access to the data is made possible.
#
# ToDo-Liste:
# - Get and Set AccessControl
#
# -----------------------------------------------

<#
    .SYNOPSIS
        Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.
    .DESCRIPTION
        Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.
    .PARAMETER Name
        A name to assign to the memory-mapped file, or null for a MemoryMappedFile that you do not intend to share across processes.
    .PARAMETER Size
        The maximum size, in bytes, to allocate to the memory-mapped file.
    .PARAMETER MemoryMappedFileAccess
        One of the enumeration values that specifies the type of access allowed to the memory-mapped file. The default is ReadWrite.
    .PARAMETER MemoryMappedFileOptions
        A bitwise combination of enumeration values that specifies memory allocation options for the memory-mapped file.
    .PARAMETER HandleInheritability
        A value that specifies whether a handle to the memory-mapped file can be inherited by a child process. The default is None.
    .PARAMETER Path
        The path to file to map.
    .PARAMETER FileMode
        Access mode; must be Open.
    .PARAMETER leaveOpen
        A value that indicates whether to close the source file stream when the MemoryMappedFile is disposed.
    .PARAMETER CreateOrOpen
        Creates a new empty memory mapped file or opens an existing memory mapped file if one exists.
    .PARAMETER FileStream
        The file stream of the existing file.
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages -HandleInheritability Inheritable
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -CreateOrOpen
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -CreateOrOpen
    .EXAMPLE
        New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages -HandleInheritability Inheritable -CreateOrOpen
    .EXAMPLE
        New-MemoryMappedFile -Path ".\memoryfiledata.dat"
    .EXAMPLE
        New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew
    .EXAMPLE
        New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test"
    .EXAMPLE
        New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test" -Size 1024
    .EXAMPLE
        New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test" -Size 1024 -MemoryMappedFileAccess CopyOnWrite
    .EXAMPLE
        New-MemoryMappedFile -FileStream $Stream -Name "Test" -Size "1024" -MemoryMappedFileAccess CopyOnWrite -HandleInheritability Inheritable -leaveOpen
    .NOTES
        FunctionName : New-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/New-MemoryMappedFile.md
#>
function New-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([System.IO.MemoryMappedFiles.MemoryMappedFile])]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile6')]
        [System.IO.FileStream] $FileStream,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='FileMode')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile3')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile4')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile5')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
	    [String]$Path,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='FileMode')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='CreateFromFile3')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='CreateFromFile4')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='CreateFromFile5')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('mode')]
	    [System.IO.FileMode]$FileMode,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='MemoryMappedFileAccess')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='MemoryMappedFileOptions')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='CreateFromFile3')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='CreateFromFile4')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='CreateFromFile5')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='CreateFromFile6')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('mapName')]
	    [String]$Name,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='Default')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='MemoryMappedFileAccess')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='MemoryMappedFileOptions')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='CreateFromFile4')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='CreateFromFile5')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='CreateFromFile6')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('capacity')]
	    [Int64]$Size,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='MemoryMappedFileAccess')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='MemoryMappedFileOptions')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=4,
                   ParameterSetName='CreateFromFile5')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='CreateFromFile6')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('access')]
        [System.IO.MemoryMappedFiles.MemoryMappedFileAccess] $MemoryMappedFileAccess,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='MemoryMappedFileOptions')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('options')]
        [System.IO.MemoryMappedFiles.MemoryMappedFileOptions] $MemoryMappedFileOptions,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=4,
                   ParameterSetName='MemoryMappedFileOptions')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=4,
                   ParameterSetName='CreateFromFile6')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('inheritability')]
        [System.IO.HandleInheritability] $HandleInheritability,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=5,
                   ParameterSetName='CreateFromFile6')]
        [bool] $leaveOpen,

        [Parameter(Mandatory=$false, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='Default')]
        [Parameter(Mandatory=$false, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='MemoryMappedFileAccess')]
        [Parameter(Mandatory=$false, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=5,
                   ParameterSetName='MemoryMappedFileOptions')]
        [Switch] $CreateOrOpen = $false
    )


    Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }
    Process
    {
        if ($pscmdlet.ShouldProcess($Name, $MyInvocation.MyCommand.Name))
        {
            try
            {
                # Erstellt eine im Speicher abgebildete Datei mit der angegebenen Kapazität im Systemspeicher.
                if ($PSCmdlet.ParameterSetName -eq "Default") 
                { 
                    if ($CreateOrOpen) 
                    { 
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateOrOpen($Name, $Size); 
                    } 
                    else 
                    {
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size);
                    }
                }

                # Erstellt eine im Speicher abgebildete Datei mit den angegebenen Werten für Kapazität und Zugriffstyp im Systemspeicher.
                if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileAccess")
                {
                    if ($CreateOrOpen)
                    {
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateOrOpen($Name, $Size, $MemoryMappedFileAccess);
                    }
                    else
                    {
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size, $MemoryMappedFileAccess);
                    }
                }

                # Erstellt eine im Speicher abgebildete Datei mit den angegebenen Werten für Name, Kapazität, Zugriffstyp, Speicherbelegung und Vererbbarkeit.
                if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileOptions")
                {
                    if ($CreateOrOpen)
                    {
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateOrOpen($Name, $Size, $MemoryMappedFileAccess, $MemoryMappedFileOptions, $HandleInheritability);
                    }
                    else
                    {
                        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size, $MemoryMappedFileAccess, $MemoryMappedFileOptions, $HandleInheritability);
                    }
                }
    
                # Erstellt eine Speicherabbilddatei aus einer Datei auf dem Datenträger.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFile")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path);
                }

                # Erstellt eine im Speicher abgebildete Datei mit dem angegebenen Zugriffsmodus aus einer Datei auf dem Datenträger.
                if ($PSCmdlet.ParameterSetName -eq "FileMode")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode);
                }

                # Erstellt eine im Speicher abgebildete Datei mit den angegebenen Werten für Zugriffsmodus und Name aus einer Datei auf dem Datenträger.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFile3")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name);
                }

                # Erstellt eine im Speicher abgebildete Datei mit den angegebenen Werten für Zugriffsmodus, Name und Kapazität aus einer Datei auf dem Datenträger.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFile4")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name, $Size);
                }

                # Erstellt eine im Speicher abgebildete Datei mit den angegebenen Werten für Zugriffsmodus, Name, Kapazität und Zugriffstyp aus einer Datei auf dem Datenträger.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFile5")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name, $Size, $MemoryMappedFileAccess);
                }

                # Erstellt eine im Speicher abgebildete Datei aus einer vorhandenen Datei mit dem angegebenen Zugriffsmodus, den angegebenen Namen, der angegebenen Vererbbarkeit und Kapazität.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFile6")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($FileStream ,$Name, $Size, $MemoryMappedFileAccess, $HandleInheritability, $leaveOpen);
                }
            }
            catch [System.ArgumentOutOfRangeException]
            {
                Write-Error -Exception $_ -Message 'capacity ist kleiner oder gleich 0 (null) - oder - access ist kein gültiger MemoryMappedFileAccess-Enumerationswert.'
            }
            catch [ArgumentException]
            {
                Write-Error -Exception $_ -Message 'mapName ist eine leere Zeichenfolge - oder - access ist mit dem Write-Enumerationswert auf „Nur Schreibzugriff“ festgelegt.'
            }
            catch [System.PlatformNotSupportedException]
            {
                Write-Error -Exception $_ -Message 'Nur .NET 5 und höher und .NET Core: Aufrufe der CreateNew-Methode mit einer benannten im Speicher abgebildeten Datei (d.h. einer mapName ungleich null) werden nur unter Windows-Betriebssystemen unterstützt.'
            }
            catch
            {
                Write-Error -Exception $_
            }
        }
    }
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

<#
    .SYNOPSIS
        Opens an existing named memory-mapped file in system memory.
    .DESCRIPTION
        Opens an existing memory-mapped file that has the specified name, access rights, and inheritability in system memory.
    .PARAMETER Name
        The name of the memory-mapped file.
    .PARAMETER MemoryMappedFileRights
        One of the enumeration values that specifies the access rights to apply to the memory-mapped file.
    .PARAMETER HandleInheritability
        One of the enumeration values that specifies whether a handle to the memory-mapped file can be inherited by a child process. The default is None.
    .EXAMPLE
        Open-MemoryMappedFile -Name "Test"
    .EXAMPLE
        Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl
    .EXAMPLE
        Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl -HandleInheritability Inheritable
    .NOTES
        FunctionName : New-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/New-MemoryMappedFile.md
#>
function Open-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$false, 
                  PositionalBinding=$true,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([System.IO.MemoryMappedFiles.MemoryMappedFile])]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='MemoryMappedFileRights')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='HandleInheritability')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('mapName')]
	    [String]$Name,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='MemoryMappedFileRights')]
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='HandleInheritability')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('desiredAccessRights')]
        [System.IO.MemoryMappedFiles.MemoryMappedFileRights] $MemoryMappedFileRights,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='HandleInheritability')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('inheritability')]
        [System.IO.HandleInheritability] $HandleInheritability
    )

    Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }

    Process
    {

	    if ($PSCmdlet.ParameterSetName -eq "Default") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name); }
        
        if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileRights") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name, $MemoryMappedFileRights); }
        
        if ($PSCmdlet.ParameterSetName -eq "HandleInheritability") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name, $MemoryMappedFileRights, $HandleInheritability); }

    }
    
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

<#
    .SYNOPSIS
        Writes data to the MemoryMappedFile. 
    .DESCRIPTION
        The Out-MemoryMappedFile function retrieves a MemoryMappedViewStream of a memory mapped file and writes a value to the stream for interprocess communication.
    .PARAMETER MemoryMappedFile
        Represents a memory-mapped file.
    .PARAMETER String
        The string to write to the stream.
    .PARAMETER Append
        Specifies whether to add content to the end of a resource. Otherwise, the content is replaced with the value.
    .EXAMPLE
        Open-MemoryMappedFile -Name "Test"
    .NOTES
        FunctionName : New-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/New-MemoryMappedFile.md
#>
function Out-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$false, 
                  PositionalBinding=$true,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
                  ConfirmImpact='Medium')]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
	    [System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('value')]
	    [String]$String,

        [Parameter(Mandatory=$false, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='Default')]
        [Switch] $Append
    )
    
    Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }

    Process
    {
        if ($PsCmdlet.ParameterSetName -eq 'Default')
        {
            if ($PsCmdlet.ShouldProcess($Path, $MyInvocation.MyCommand.Name))
            {
                try
                {
                    # Öffnet eine vorhandene im Speicher abgebildete Datei im Systemspeicher und
                    # liest den Inhalt aus.
                    if ($Append)
                    {
                        $Stream = $MemoryMappedFile.CreateViewStream()
	                    $StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream
	                    $Buffer = $StreamReader.ReadToEnd().Replace("`0", "")

                        # Fügt den übergebenen String an.
                        if (!([String]::IsNullOrEmpty($Buffer)))
                        {
                            $String = $Buffer + "`r`n" + $String
                        }

	                    $StreamReader.Dispose()
                        $Stream.Dispose()
                    }

                    # Erstellt einen Stream, der einer Ansicht der Speicherabbilddatei zugeordnet ist.
	                $Stream = $MemoryMappedFile.CreateViewStream()
	                $StreamWriter = New-Object System.IO.StreamWriter -ArgumentList $Stream
	                $StreamWriter.Write($String)
                }
                catch
                {
                    Write-Error -Exception $_
                }
                finally
                {
	                $StreamWriter.Dispose()
	                $Stream.Dispose()
                }
            }
        }
    }
    
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

<#
    .SYNOPSIS
        Read data from the MemoryMappedFile. 
    .DESCRIPTION
        The Read-MemoryMappedFile function retrieves a MemoryMappedViewStream of a memory mapped file and reads the value from the stream for interprocess communication.
    .PARAMETER MemoryMappedFile
        Represents a memory-mapped file.
    .EXAMPLE
        Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
    .NOTES
        FunctionName : Read-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/Read-MemoryMappedFile.md
#>
function Read-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$false, 
                  PositionalBinding=$true,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
                  ConfirmImpact='Medium')]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
	    [System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile
    )
    
    Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }

    Process
    {
        if ($PsCmdlet.ParameterSetName -eq 'Default')
        {
            if ($PsCmdlet.ShouldProcess($Path, $MyInvocation.MyCommand.Name))
            {
                try
                {
	                $Stream = $MemoryMappedFile.CreateViewStream()

	                $StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream

	                $StreamReader.ReadToEnd().Replace("`0", "")
                }
                catch
                {
                    Write-Error -Exception $_
                }
                finally
                {
	                $StreamReader.Dispose()
	                $Stream.Dispose()
                }
            }
        }
    }
    
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

<#
    .SYNOPSIS
        Releases the resources used by the MemoryMappedFile.
    .DESCRIPTION
        The Remove-MemoryMappedFile function releases the resources used by the MemoryMappedFile.
    .PARAMETER MemoryMappedFile
        Represents a memory-mapped file.
    .EXAMPLE
        Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
    .NOTES
        FunctionName : Remove-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/Remove-MemoryMappedFile.md
#>
function Remove-MemoryMappedFile 
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$false, 
                  PositionalBinding=$true,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
                  ConfirmImpact='Medium')]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
	    [System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile
    )
        Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }

    Process
    {
        if ($PsCmdlet.ParameterSetName -eq 'Default')
        {
            if ($PsCmdlet.ShouldProcess($Path, $MyInvocation.MyCommand.Name))
            {
                try
                {
                    $MemoryMappedFile.Dispose()
                }
                catch
                {
                    Write-Error -Exception $_
                }
            }
        }
    }
    
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }	
}

<#
    .SYNOPSIS
        Saves the MemoryMappedFile to a specified path.
    .DESCRIPTION
        The Save-MemoryMappedFile function saves the MemoryMappedFile to a specified path.
    .PARAMETER MemoryMappedFile
        Represents a memory-mapped file.
    .PARAMETER Path
        Represents a path.
    .EXAMPLE
        Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
    .NOTES
        FunctionName : Remove-MemoryMappedFile
        Created by : lmissel
        Date Modified : 10/07/2021 09:00:00
        More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
    .LINK
        More informations about this function:
        https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/Remove-MemoryMappedFile.md
#>
function Save-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default', 
                  SupportsShouldProcess=$true, 
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/Save-MemoryMappedFile.md',
                  ConfirmImpact='Medium')]
    [Alias()]
    [OutputType([System.Object])]
	param(
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
	    [System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=1,
                   ParameterSetName='Default')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [String] $Path
    )

    Begin
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function started"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] ParameterSetName: $($PsCmdlet.ParameterSetName)"
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] PSBoundParameters: $($PSBoundParameters | Out-String)"
    }

    Process
    {
        if ($PsCmdlet.ParameterSetName -eq 'Default')
        {
            if ($PsCmdlet.ShouldProcess($Path, $MyInvocation.MyCommand.Name))
            {
                try
                {
                    $Stream = $MemoryMappedFile.CreateViewStream()
	                $StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream
	                $Buffer = $StreamReader.ReadToEnd().Replace("`0", "")

                    Set-Content -Value $Buffer -Path $Path -Force
                }
                catch
                {
                    Write-Error -Exception $_
                }
                finally
                {
                    $StreamReader.Dispose()
	                $Stream.Dispose()
                }
            }
            else
            {
                $result = [System.IO.File]::Exists($Path)

                if ($result -eq $true)
                {
                    Write-Host "[$($MyInvocation.MyCommand.Name)] overrides the file [$Path]."
                }
            }
        }
    }
    
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}