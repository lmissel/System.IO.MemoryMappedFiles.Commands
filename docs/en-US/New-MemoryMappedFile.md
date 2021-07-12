---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# New-MemoryMappedFile

## SYNOPSIS
Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.

## SYNTAX

### Default (Default)
```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### FileStreamSet
```
New-MemoryMappedFile [-FileStream] <FileStream> [-Name] <String> [-Size] <Int64>
 [-MemoryMappedFileAccess] <MemoryMappedFileAccess> [-HandleInheritability] <HandleInheritability>
 [-leaveOpen] <Boolean> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateFromFileSet5
```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-Size] <Int64>
 [-MemoryMappedFileAccess] <MemoryMappedFileAccess> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateFromFileSet4
```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-Size] <Int64> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### CreateFromFileSet3
```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### FileModeSet
```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### CreateFromFileSet
```
New-MemoryMappedFile [-Path] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### MemoryMappedFileOptionSet
```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-MemoryMappedFileAccess] <MemoryMappedFileAccess>
 [-MemoryMappedFileOptions] <MemoryMappedFileOptions> [-HandleInheritability] <HandleInheritability>
 [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### MemoryMappedFileAccessSet
```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-MemoryMappedFileAccess] <MemoryMappedFileAccess>
 [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.

Memory-mapped files allow programmers to work with extremely large files because memory can be managed concurrently, and they provide complete random access to a file without requiring a seek. Memory-mapped files can also be shared among multiple processes.

A memory-mapped file can be associated with an optional name that allows the memory-mapped file to be shared with other processes.

## EXAMPLES

### Example 1: Create a new memory-mapped file. (Default)
```powershell
PS C:\> New-MemoryMappedFile -Name "Test" -Size 1024

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```

This command creates a memory-mapped file that has the specified capacity in system memory.

### EXAMPLE 2: Create a new memory-mapped file.
```powershell
PS C:\> New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
This command creates a memory-mapped file that has the specified capacity and access type in system memory.

## PARAMETERS

### -CreateOrOpen
Creates a new empty memory mapped file or opens an existing memory mapped file if one exists.

```yaml
Type: SwitchParameter
Parameter Sets: Default, MemoryMappedFileOptionSet, MemoryMappedFileAccessSet
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -FileMode
Access mode; must be Open.

```yaml
Type: FileMode
Parameter Sets: CreateFromFileSet5, CreateFromFileSet4, CreateFromFileSet3, FileModeSet
Aliases: mode
Accepted values: CreateNew, Create, Open, OpenOrCreate, Truncate, Append

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -FileStream
The file stream of the existing file.

```yaml
Type: FileStream
Parameter Sets: FileStreamSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -HandleInheritability
A value that specifies whether a handle to the memory-mapped file can be inherited by a child process.
The default is None.

```yaml
Type: HandleInheritability
Parameter Sets: FileStreamSet, MemoryMappedFileOptionSet
Aliases: inheritability
Accepted values: None, Inheritable

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -leaveOpen
A value that indicates whether to close the source file stream when the MemoryMappedFile is disposed.

```yaml
Type: Boolean
Parameter Sets: FileStreamSet
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFileAccess
One of the enumeration values that specifies the type of access allowed to the memory-mapped file.
The default is ReadWrite.

```yaml
Type: MemoryMappedFileAccess
Parameter Sets: FileStreamSet, CreateFromFileSet5, MemoryMappedFileOptionSet, MemoryMappedFileAccessSet
Aliases: access
Accepted values: ReadWrite, Read, Write, CopyOnWrite, ReadExecute, ReadWriteExecute

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFileOptions
A bitwise combination of enumeration values that specifies memory allocation options for the memory-mapped file.

```yaml
Type: MemoryMappedFileOptions
Parameter Sets: MemoryMappedFileOptionSet
Aliases: options
Accepted values: None, DelayAllocatePages

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Name
A name to assign to the memory-mapped file, or null for a MemoryMappedFile that you do not intend to share across processes.

```yaml
Type: String
Parameter Sets: Default, FileStreamSet, CreateFromFileSet5, CreateFromFileSet4, CreateFromFileSet3, MemoryMappedFileOptionSet, MemoryMappedFileAccessSet
Aliases: mapName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Path
The path to file to map.

```yaml
Type: String
Parameter Sets: CreateFromFileSet5, CreateFromFileSet4, CreateFromFileSet3, FileModeSet, CreateFromFileSet
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Size
The maximum size, in bytes, to allocate to the memory-mapped file.

```yaml
Type: Int64
Parameter Sets: Default, FileStreamSet, CreateFromFileSet5, CreateFromFileSet4, MemoryMappedFileOptionSet, MemoryMappedFileAccessSet
Aliases: capacity

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Benannt
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Benannt
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.FileStream

### System.String

### System.IO.FileMode

### System.Int64

### System.IO.MemoryMappedFiles.MemoryMappedFileAccess

### System.IO.MemoryMappedFiles.MemoryMappedFileOptions

### System.IO.HandleInheritability

### System.Boolean

### System.Management.Automation.SwitchParameter

## OUTPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile

## NOTES


## RELATED LINKS
[Open-MemoryMappedFile](Open-MemoryMappedFile.md)
[Out-MemoryMappedFile](Out-MemoryMappedFile.md)
[Read-MemoryMappedFile](Read-MemoryMappedFile.md)
[Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)
[Save-MemoryMappedFile](Save-MemoryMappedFile.md)
