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