# -----------------------------------------------
# Module: System.IO.MemoryMappedFiles.Commands
# 
# Dieses PowerShell Module stellt Funktionen für sogenannte Speicherabbilddateien zur Verfügung. Speicherabbilddateien ermöglichen Programmierern, mit sehr großen Dateien arbeiten zu können, da der Speicher gleichzeitig verwaltet werden kann. Speicherabbilddateien können auch von mehreren Prozessen verwendet werden, wodurch der Austausch von Daten, mit Hilfe von Speicherabbilddateien, über mehrere PowerShell Instanzen ermöglicht werden kann.
# Ebenso ist das Einlesen von vorhandenen Dateien möglich, wodurch ein schnellerer Zugriff auf die Daten ermöglicht wird.
#
# ToDo-Liste:
# - CreateFromFile implementation
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
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
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
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
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
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [System.IO.MemoryMappedFiles.MemoryMappedFileAccess] $MemoryMappedFileAccess,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=3,
                   ParameterSetName='MemoryMappedFileOptions')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [System.IO.MemoryMappedFiles.MemoryMappedFileOptions] $MemoryMappedFileOptions,

        [Parameter(Mandatory=$true, 
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true, 
                   ValueFromRemainingArguments=$false, 
                   Position=4,
                   ParameterSetName='MemoryMappedFileOptions')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [System.IO.HandleInheritability] $HandleInheritability
    )

    if ($PSCmdlet.ParameterSetName -eq "Default") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size); }
    if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileAccess") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size, $MemoryMappedFileAccess); }
    if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileOptions") {	[System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateNew($Name, $Size, $MemoryMappedFileAccess, $MemoryMappedFileOptions, $HandleInheritability); }
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
	[String]$String)

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