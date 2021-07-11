## System.IO.MemoryMappedFiles.Commands
This PowerShell module provides functions for so-called memory mapped files. Memory mapped files allow programmers to work with very large files because the memory can be managed simultaneously. Memory mapped files can also be used by multiple processes, allowing data to be shared across multiple PowerShell instances using memory mapped files.

Similarly, reading of existing files is possible, which allows faster access to the data is made possible.

# Example from Microsoft Docs
The following example is composed of two separate processes (console applications) that write a values to a memory-mapped file. The following sequence of actions occur:

- Process A creates the memory-mapped file and writes a value to it.

- Process B opens the memory-mapped file and reads a value.

To run this example, do the following:

- In the first Command window, run Process A.

- In the second Command window, run Process B.

- Return to Process A and press ENTER.

````Output
BasePriority               : 8
ExitCode                   : 
HasExited                  : False
ExitTime                   : 
Handle                     : 3256
SafeHandle                 : @{IsInvalid=False; IsClosed=False}
HandleCount                : 784
Id                         : 4820
MachineName                : .
MainWindowHandle           : 0
MainWindowTitle            : 
MainModule                 : @{ModuleName=PowerShell_ISE.exe; FileName=C:\WINDOWS\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe; BaseAddress=2174928879616; 
                             ModuleMemorySize=229376; EntryPointAddress=0; FileVersionInfo=; Site=; Container=}
MaxWorkingSet              : 1413120
MinWorkingSet              : 204800
...
````

### Process A

````PowerShell
# Loading the module
Import-Module System.IO.MemoryMappedFiles.Commands

[String] $String = Get-Process -Name powershell_ise | ConvertTo-Json -Depth 10

# Creates a file mapped in memory with the specified capacity in the system memory.
$MemoryMappedFile = New-MemoryMappedFile -Name "Test" -Size $String.Length

# Creates a stream associated with a view of the memory map file and adds the string as a stream.
Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String $String

# Start Process B and press ENTER to continue.
Read-Host

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
````

### Process B

````PowerShell
# Loading the module
Import-Module System.IO.MemoryMappedFiles.Commands

# Opens an existing file mapped in memory with the specified name in the system memory.
$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

# Creates a stream associated with a view of the memory map file and reads that stream and convert from Json.
$Object = Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile | ConvertFrom-Json

# Output the Object
Write-Output $Object

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
````

## Remarks
Use this method to create a memory-mapped file that is not persisted (that is, not associated with a file on disk), which you can use to share data between processes.