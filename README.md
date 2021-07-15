# System.IO.MemoryMappedFiles.Commands
This PowerShell script module `System.IO.MemoryMappedFiles.Commands` provides functions for so-called memory mapped files. Memory mapped files allow programmers to work with very large files because memory can be managed simultaneously. Memory mapped files can also be used by multiple processes, so that data can be shared across multiple PowerShell instances with memory mapped files.

It is also possible to read in existing files, which allows faster access to the data.

## Minimum Requirements

The module requires .NET and PowerShell. The following versions are supported:

|Product|Version|
|---|---|
|.NET Core|1.0, 1.1, 2.0, 2.1, 2.2, 3.0, 3.1|
|.NET Standard|2.0, 2.1|
|.NET Framework|4.0, 4.5, 4.5.1, 4.5.2, 4.6, 4.6.1, 4.6.2, 4.7, 4.7.1, 4.7.2, 4.8|
|.NET|5.0, 6.0 Preview 3|
|PowerShell|3.0 or higher|

## Installation

To install and run this module, copy the folder with the name `System.IO.MemoryMappedFiles.Commands` in one of the appropriate PowerShell paths and use `Import-Module -Name System.IO.MemoryMappedFiles.Commands`.

The paths where you can install this module are in the `$env:PSModulePath` global variable. For example, a common path to store a module on a system would be `%SystemRoot%/users/<user>/Documents/PowerShell/Modules/<moduleName>`. Be sure to create a directory for this module that uses the same name `System.IO.MemoryMappedFiles.Commands` as the script module. If you did not save this module in one of these paths, you must specify the location of the module in the Import-Module command. Otherwise, PowerShell would not be able to find the module.

Starting with PowerShell, if you've placed this module in one of the PowerShell module paths, you don't need to explicitly import it. This module is automatically loaded when a user calls a function of the module. For more information about the module path, see [Importing a PowerShell Module](https://docs.microsoft.com/en-us/powershell/scripting/developer/module/importing-a-powershell-module?view=powershell-7.1) and [Modifying the PSModulePath Installation Path](https://docs.microsoft.com/en-us/powershell/scripting/developer/module/modifying-the-psmodulepath-installation-path?view=powershell-7.1).

To remove this module from active service in the current PowerShell session, use `Remove-Module -name System.IO.MemoryMappedFiles.Commands`.

> [!Note]
> `Remove-Module` removes a module from the current PowerShell session, but doesn't uninstall the module or delete the module's files.

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

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
```

```Output
Hello back!
```

Start a new PowerShell Instance.

```PowerShell
# Loading the module
Import-Module System.IO.MemoryMappedFiles.Commands

# Opens an existing file mapped in memory with the specified name in the system memory.
$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

# Creates a stream associated with a view of the memory map file and reads that stream.
Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

# Creates a stream associated with a view of the memory map file and adds the string as a stream.
Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Hello back!"

# Releases all resources used by the MemoryMappedFile.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

# Press ENTER to continue.
Read-Host
```

```Output
Hello World!
```

## Changelog

|Version|State|Comment|
|---|---|---|
|1.0.0.0|done|Initial module|
|1.0.0.1|done|Small bug fix|
|1.1.0.0|done|New structure and division of the module and functions, multilingualism, bug fixes as well as enhancements.|

>[!Important]
>Some functions may have been renamed or given additional functionality. Please check your scripts for functionality and correct them if necessary.

## Note
The module uses enumerations and classes of the namepace [System.IO.MemoryMappedFiles]. This namespace provides classes for using a memory-mapped file, which maps the contents of a file to the logical address space of an application.

## See also
- [System.IO.MemoryMappedFiles Namespace | Microsoft Docs](https://docs.microsoft.com/en-us/dotnet/api/system.io.memorymappedfiles?view=net-5.0)
