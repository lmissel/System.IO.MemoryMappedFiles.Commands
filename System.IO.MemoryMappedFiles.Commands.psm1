# -----------------------------------------------
# Module: System.IO.MemoryMappedFiles.Commands
# 
# Dieses PowerShell Module stellt Funktionen für sogenannte Speicherabbilddateien zur Verfügung.
# Speicherabbilddateien ermöglichen Programmierern, mit sehr großen Dateien arbeiten zu können, 
# da der Speicher gleichzeitig verwaltet werden kann. Speicherabbilddateien können auch von mehreren
# Prozessen verwendet werden, wodurch der Austausch von Daten, mit Hilfe von Speicherabbilddateien,
# über mehrere PowerShell Instanzen ermöglicht werden kann.
#
# Ebenso ist das Einlesen von vorhandenen Dateien möglich, wodurch ein schnellerer Zugriff auf die
# Daten ermöglicht wird.
#
# ToDo-Liste:
# - Get and Set AccessControl
#
# -----------------------------------------------

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
        # Der Dateistream der angegebenen Datei.
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=0,
                   ParameterSetName='CreateFromFile6')]
        [System.IO.FileStream] $FileStream,

        # Der Pfad der abzubildenden Datei.
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

        # Der Zugriffsmodus. Muss Open sein.
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
	    [System.IO.FileMode]$FileMode,

        # Der Name der im Speicher abgebildeten Datei.
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
	    [String]$Name,

        # Die maximale Größe (in Bytes), die für die Speicherabbilddatei reserviert werden soll.
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
	    [Int64]$Size,

        # Einer der Enumerationswerte, der den zulässigen Zugriffstyp für die Speicherabbilddatei angibt. Der Standardwert ist ReadWrite.
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
        [System.IO.MemoryMappedFiles.MemoryMappedFileAccess] $MemoryMappedFileAccess,

        # Eine bitweise Kombination von Enumerationswerten, die Speicherbelegungsoptionen für die Speicherabbilddatei angeben.
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='MemoryMappedFileOptions')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [System.IO.MemoryMappedFiles.MemoryMappedFileOptions] $MemoryMappedFileOptions,

        # Ein Wert, der angibt, ob ein Handle auf die Speicherabbilddatei von einem untergeordneten Prozess geerbt werden kann. Der Standardwert ist None.
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
        [System.IO.HandleInheritability] $HandleInheritability,

        # Dieser Wert gibt an, ob der Stream der Quelldatei geschlossen werden soll, wenn MemoryMappedFile freigegeben wird.
        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=5,
                   ParameterSetName='CreateFromFile6')]
        [bool] $leaveOpen,

        # Erstellt eine neue leere im Speicher abgebildete Datei oder öffnet eine vorhandene im Speicher abgebildete Datei, wenn eine Datei mit diesem Namen existiert.
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
    
    if ($PSCmdlet.ParameterSetName -eq "CreateFromFile")
    {
        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path);
    }

    if ($PSCmdlet.ParameterSetName -eq "FileMode")
    {
        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode);
    }

    if ($PSCmdlet.ParameterSetName -eq "CreateFromFile3")
    {
    	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name);
    }

    if ($PSCmdlet.ParameterSetName -eq "CreateFromFile4")
    {
    	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name, $Size);
    }

    if ($PSCmdlet.ParameterSetName -eq "CreateFromFile5")
    {
        [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($Path, $FileMode, $Name, $Size, $MemoryMappedFileAccess);
    }

    if ($PSCmdlet.ParameterSetName -eq "CreateFromFile6")
    {
    	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFile($FileStream ,$Name, $Size, $MemoryMappedFileAccess, $HandleInheritability, $leaveOpen);
    }
}

function Open-MemoryMappedFile
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
        [System.IO.MemoryMappedFiles.MemoryMappedFileRights] $MemoryMappedFileRights,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=2,
                   ParameterSetName='HandleInheritability')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [System.IO.HandleInheritability] $HandleInheritability
    )

	if ($PSCmdlet.ParameterSetName -eq "Default") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name); }
    if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileRights") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name, $MemoryMappedFileRights); }
    if ($PSCmdlet.ParameterSetName -eq "HandleInheritability") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::OpenExisting($Name, $MemoryMappedFileRights, $HandleInheritability); }
}

function Out-MemoryMappedFile
{
	[CmdletBinding()]
	param(
	    [Parameter(Mandatory)]
	    [System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile,

	    [Parameter(ValueFromPipeline=$true, Mandatory)]
	    [String]$String,

        [Switch] $Append
    )

	# Öffnet eine vorhandene im Speicher abgebildete Datei im Systemspeicher und
    # liest den Inhalt aus.
    if ($Append)
    {
        $Stream = $MemoryMappedFile.CreateViewStream()
	    $StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream
	    $Buffer = $StreamReader.ReadToEnd().Replace("`0", "")
	    $StreamReader.Dispose()
        $Stream.Dispose()

        # Fügt den übergebenen String an.
        if (!([String]::IsNullOrEmpty($Buffer)))
        {
            $String = $Buffer + "`r`n" + $String
        }
    }

    # Erstellt einen Stream, der einer Ansicht der Speicherabbilddatei zugeordnet ist.
	$Stream = $MemoryMappedFile.CreateViewStream()
	$StreamWriter = New-Object System.IO.StreamWriter -ArgumentList $Stream
	$StreamWriter.Write($String)
	$StreamWriter.Dispose()
	$Stream.Dispose()
}

function Read-MemoryMappedFile
{
	[CmdletBinding()]
	param(
	[Parameter(Mandatory)]
	[System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile)

	$Stream = $MemoryMappedFile.CreateViewStream()

	$StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream

	$StreamReader.ReadToEnd().Replace("`0", "")
	$StreamReader.Dispose()
	$Stream.Dispose()
}

function Remove-MemoryMappedFile 
{
	[CmdletBinding()]
	param(
	[Parameter(Mandatory)]
	[System.IO.MemoryMappedFiles.MemoryMappedFile]$MemoryMappedFile)

	$MemoryMappedFile.Dispose()
}