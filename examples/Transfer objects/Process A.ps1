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