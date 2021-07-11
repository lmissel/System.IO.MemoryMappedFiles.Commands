# System.IO.MemoryMappedFiles.Commands
This PowerShell module provides functions for so-called memory dump files. Memory dump files allow programmers to work with very large files because memory can be managed simultaneously. Memory image files can also be used by multiple processes, so that data can be shared across multiple PowerShell instances with memory image files.

It is also possible to read in existing files, which allows faster access to the data.

## Requirements

To use this module, .Net Standard is required. This should be available by default on Windows systems.

## Installation

Copy the module into one of the PowerShell module paths.

## Usage

This example shows and explains how the module can be used.

```PowerShell
# Loading the module
Import-Module System.IO.MemoryMappedFiles.Commands

# Creates a file mapped in memory with the specified capacity in the system memory.
$MemoryMappedFile = New-MemoryMappedFile -Name "Test" -Size 1024

# Creates a stream associated with a view of the memory map file and adds the string as a stream.
Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Hello World!"

# Start Process B and press ENTER to continue.
Read-Host

# Creates a stream associated with a view of the memory map file and reads that stream.
Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

Output:
Hello back!

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
```

Start a new PowerShell Instance.

```PowerShell
# Loading the module
Import-Module System.IO.MemoryMappedFiles.Commands

# Opens an existing file mapped in memory with the specified name in the system memory.
$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

# Creates a stream associated with a view of the memory map file and reads that stream.
Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

Output:
Hello World!

# Creates a stream associated with a view of the memory map file and adds the string as a stream.
Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Hello back!"

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

# Press ENTER to continue.
Read-Host
```

## Note
The module uses enumerations and classes of the namepace [System.IO.MemoryMappedFiles]. This namespace provides classes for using a memory-mapped file, which maps the contents of a file to the logical address space of an application.