---
Module Name: System.IO.MemoryMappedFiles.Commands
Module Guid: 8515ea70-3c13-4fa9-ad9c-2d3325bf5c8f
Locale: en-US
---

# System.IO.MemoryMappedFiles.Commands Module
## Description
This PowerShell module provides functions for so-called memory mapped files. Memory mapped files allow programmers to work with very large files because the memory can be managed simultaneously. Memory mapped files can also be used by multiple processes, allowing data to be shared across multiple PowerShell instances using memory mapped files.

Similarly, reading of existing files is possible, which allows faster access to the data is made possible.

## System.IO.MemoryMappedFiles.Commands Cmdlets
### [New-MemoryMappedFile](New-MemoryMappedFile.md)
Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.

### [Open-MemoryMappedFile](Open-MemoryMappedFile.md)
Opens an existing named memory-mapped file in system memory.

### [Out-MemoryMappedFile](Out-MemoryMappedFile.md)
Writes data to the MemoryMappedFile.

### [Read-MemoryMappedFile](Read-MemoryMappedFile.md)
Read data from the MemoryMappedFile.

### [Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)
Releases the resources used by the MemoryMappedFile.

### [Save-MemoryMappedFile](Save-MemoryMappedFile.md)
Saves the MemoryMappedFile to a specified path.

