﻿#
# Module Name: System.IO.MemoryMappedFiles.Commands
# Module Guid: 8515ea70-3c13-4fa9-ad9c-2d3325bf5c8f
#
# Generated by: lmissel
#
# Generated on: 7/11/2021
#

$Script:LocalizedData = Import-LocalizedData

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
                   ParameterSetName='FileStreamSet')]
        [System.IO.FileStream] $FileStream,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='CreateFromFileSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='FileModeSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='CreateFromFileSet3')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='CreateFromFileSet4')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='CreateFromFileSet5')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
	    [String]$Path,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='FileModeSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='CreateFromFileSet3')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='CreateFromFileSet4')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='CreateFromFileSet5')]
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
                   ParameterSetName='MemoryMappedFileAccessSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=0,
                   ParameterSetName='MemoryMappedFileOptionSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='CreateFromFileSet3')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='CreateFromFileSet4')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='CreateFromFileSet5')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='FileStreamSet')]
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
                   ParameterSetName='MemoryMappedFileAccessSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=1,
                   ParameterSetName='MemoryMappedFileOptionSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=3,
                   ParameterSetName='CreateFromFileSet4')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=3,
                   ParameterSetName='CreateFromFileSet5')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='FileStreamSet')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('capacity')]
	    [Int64]$Size,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='MemoryMappedFileAccessSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=2,
                   ParameterSetName='MemoryMappedFileOptionSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=4,
                   ParameterSetName='CreateFromFileSet5')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=3,
                   ParameterSetName='FileStreamSet')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('access')]
        [System.IO.MemoryMappedFiles.MemoryMappedFileAccess] $MemoryMappedFileAccess,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=3,
                   ParameterSetName='MemoryMappedFileOptionSet')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('options')]
        [System.IO.MemoryMappedFiles.MemoryMappedFileOptions] $MemoryMappedFileOptions,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=4,
                   ParameterSetName='MemoryMappedFileOptionSet')]
        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=4,
                   ParameterSetName='FileStreamSet')]
        [ValidateNotNull()]
        [ValidateNotNullOrEmpty()]
        [Alias('inheritability')]
        [System.IO.HandleInheritability] $HandleInheritability,

        [Parameter(Mandatory=$true,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=5,
                   ParameterSetName='FileStreamSet')]
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
                   ParameterSetName='MemoryMappedFileAccessSet')]
        [Parameter(Mandatory=$false,
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   ValueFromRemainingArguments=$false,
                   Position=5,
                   ParameterSetName='MemoryMappedFileOptionSet')]
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
                # Creates a file mapped in memory with the specified capacity in system memory.
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

                # Creates a file mapped in memory with the specified values for capacity and access type in the system memory.
                if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileAccessSet")
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

                # Creates a file mapped in memory with the specified values for name, capacity, access type, memory allocation, and inheritability. Access type, memory allocation, and inheritability.
                if ($PSCmdlet.ParameterSetName -eq "MemoryMappedFileOptionSet")
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

                # Creates a memory image file from a file on the disk.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFileSet")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($Path);
                }

                # Creates a file mapped in memory with the specified access mode from a file on the disk.
                if ($PSCmdlet.ParameterSetName -eq "FileModeSet")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($Path, $FileMode);
                }

                # Creates a file mapped in memory with the specified access mode and name values from a file on the disk.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFileSet3")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($Path, $FileMode, $Name);
                }

                # Creates a file mapped in memory with the specified values for access mode, name, and capacity from a file on the disk.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFileSet4")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($Path, $FileMode, $Name, $Size);
                }

                # Creates a file mapped in memory with the specified values for access mode, name, capacity, and access type from a file on the disk.
                if ($PSCmdlet.ParameterSetName -eq "CreateFromFileSet5")
                {
                    [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($Path, $FileMode, $Name, $Size, $MemoryMappedFileAccess);
                }

                # Creates a file mapped in memory from an existing file with the specified access mode, names, inheritability, and capacity.
                if ($PSCmdlet.ParameterSetName -eq "FileStreamSet")
                {
    	            [System.IO.MemoryMappedFiles.MemoryMappedFile]::CreateFromFileSet($FileStream ,$Name, $Size, $MemoryMappedFileAccess, $HandleInheritability, $leaveOpen);
                }
            }
            catch [System.ArgumentOutOfRangeException]
            {
                Write-Error -Message $Script:LocalizedData.ArgumentOutOfRangeException
            }
            catch [ArgumentException]
            {
                Write-Error -Message $Script:LocalizedData.ArgumentException
            }
            catch [System.PlatformNotSupportedException]
            {
                Write-Error -Message $Script:LocalizedData.PlatformNotSupportedException
            }
            catch
            {
                Write-Error $_
            }
        }
    }
    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

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

function Out-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default',
                  SupportsShouldProcess=$true,
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
                    # Opens an existing file mapped in memory in the system storage and reads the contents.
                    if ($Append)
                    {
                        $Stream = $MemoryMappedFile.CreateViewStream()
	                    $StreamReader = New-Object System.IO.StreamReader -ArgumentList $Stream
	                    $Buffer = $StreamReader.ReadToEnd().Replace("`0", "")

                        # Appends the passed string.
                        if (!([String]::IsNullOrEmpty($Buffer)))
                        {
                            $String = $Buffer + "`r`n" + $String
                        }

	                    $StreamReader.Dispose()
                        $Stream.Dispose()
                    }

                    # Creates a stream associated with a view of the memory image file.
	                $Stream = $MemoryMappedFile.CreateViewStream()
	                $StreamWriter = New-Object System.IO.StreamWriter -ArgumentList $Stream
	                $StreamWriter.Write($String)
                }
                catch
                {
                    Write-Error $_
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

function Read-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default',
                  SupportsShouldProcess=$true,
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
                    Write-Error $_
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

function Remove-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default',
                  SupportsShouldProcess=$true,
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
                    Write-Error $_
                }
            }
        }
    }

    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}

function Save-MemoryMappedFile
{
    [CmdletBinding(DefaultParameterSetName='Default',
                  SupportsShouldProcess=$true,
                  PositionalBinding=$false,
                  HelpUri = 'https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/',
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
                    Write-Error $_
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
                    Write-Output "[$($MyInvocation.MyCommand.Name)] overrides the file [$Path]."
                }
            }
        }
    }

    End
    {
        Write-Verbose "[$($MyInvocation.MyCommand.Name)] Function ended"
    }
}