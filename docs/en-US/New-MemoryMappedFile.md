---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version:
schema: 2.0.0
---

# New-MemoryMappedFile

## SYNOPSIS
Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.

## SYNTAX

### Create new (String, Int64) (Default)

Creates a memory-mapped file that has the specified capacity in system memory.

```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create from file (FileStream, String, Int64, MemoryMappedFileAccess, HandleInheritability, Boolean)

Creates a memory-mapped file from an existing file with the specified access mode, name, inheritability, and capacity.

```
New-MemoryMappedFile [-FileStream] <FileStream> [-Name] <String> [-Size] <Int64>
 [-MemoryMappedFileAccess] <MemoryMappedFileAccess> [-HandleInheritability] <HandleInheritability>
 [-leaveOpen] <Boolean> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create from file (String, FileMode, String, Int64, MemoryMappedFileAccess)

Creates a memory-mapped file that has the specified access mode, name, capacity, and access type from a file on disk.

```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-Size] <Int64>
 [-MemoryMappedFileAccess] <MemoryMappedFileAccess> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create from file (String, FileMode, String, Int64)	

Creates a memory-mapped file that has the specified access mode, name, and capacity from a file on disk.

```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-Size] <Int64> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Create from file (String, FileMode, String)

Creates a memory-mapped file that has the specified access mode and name from a file on disk.

```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-Name] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Create from file (String, FileMode)

Creates a memory-mapped file that has the specified access mode from a file on disk.

```
New-MemoryMappedFile [-Path] <String> [-FileMode] <FileMode> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create from file (String)

Creates a memory-mapped file from a file on disk.

```
New-MemoryMappedFile [-Path] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create new (String, Int64, MemoryMappedFileAccess, MemoryMappedFileOptions, HandleInheritability)	

Creates a memory-mapped file that has the specified name, capacity, access type, memory allocation options and inheritability.

```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-MemoryMappedFileAccess] <MemoryMappedFileAccess>
 [-MemoryMappedFileOptions] <MemoryMappedFileOptions> [-HandleInheritability] <HandleInheritability>
 [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Create new (String, Int64, MemoryMappedFileAccess)

Creates a memory-mapped file that has the specified capacity and access type in system memory.

```
New-MemoryMappedFile [-Name] <String> [-Size] <Int64> [-MemoryMappedFileAccess] <MemoryMappedFileAccess>
 [-CreateOrOpen] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Creates or opens a memory image file in system memory, or creates a memory image file from an existing file.

Memory-mapped files allow programmers to work with extremely large files because memory can be managed concurrently, and they provide complete random access to a file without requiring a seek. Memory-mapped files can also be shared among multiple processes.

A memory-mapped file can be associated with an optional name that allows the memory-mapped file to be shared with other processes.

## EXAMPLES

### EXAMPLE 1 : Create a new memory-mapped file.(Default)

Creates a memory-mapped file that has the specified capacity in system memory.

```
New-MemoryMappedFile -Name "Test" -Size 1024
```

### EXAMPLE 2 : Create a new memory-mapped file.

Creates a memory-mapped file that has the specified capacity and access type in system memory.

```
New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute
```

### EXAMPLE 3
```
New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages
```

### EXAMPLE 4
```
New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages -HandleInheritability Inheritable
```

### EXAMPLE 5
```
New-MemoryMappedFile -Name "Test" -Size 1024 -CreateOrOpen
```

### EXAMPLE 6
```
New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -CreateOrOpen
```

### EXAMPLE 7
```
New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute -MemoryMappedFileOptions DelayAllocatePages -HandleInheritability Inheritable -CreateOrOpen
```

### EXAMPLE 8
```
New-MemoryMappedFile -Path ".\memoryfiledata.dat"
```

### EXAMPLE 9
```
New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew
```

### EXAMPLE 10
```
New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test"
```

### EXAMPLE 11
```
New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test" -Size 1024
```

### EXAMPLE 12
```
New-MemoryMappedFile -Path ".\memoryfiledata.dat" -FileMode CreateNew -Name "Test" -Size 1024 -MemoryMappedFileAccess CopyOnWrite
```

### EXAMPLE 13
```
New-MemoryMappedFile -FileStream $Stream -Name "Test" -Size "1024" -MemoryMappedFileAccess CopyOnWrite -HandleInheritability Inheritable -leaveOpen
```

## PARAMETERS

### -CreateOrOpen
Creates a new empty memory mapped file or opens an existing memory mapped file if one exists.

```yaml
Type: SwitchParameter
Parameter Sets: Default, MemoryMappedFileOptions, MemoryMappedFileAccess
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -FileMode
Access mode; must be Open.

```yaml
Type: FileMode
Parameter Sets: CreateFromFile5, CreateFromFile4, CreateFromFile3, FileMode
Aliases: mode
Accepted values: CreateNew, Create, Open, OpenOrCreate, Truncate, Append

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -FileStream
The file stream of the existing file.

```yaml
Type: FileStream
Parameter Sets: CreateFromFile6
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -HandleInheritability
A value that specifies whether a handle to the memory-mapped file can be inherited by a child process.
The default is None.

```yaml
Type: HandleInheritability
Parameter Sets: CreateFromFile6, MemoryMappedFileOptions
Aliases: inheritability
Accepted values: None, Inheritable

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -leaveOpen
A value that indicates whether to close the source file stream when the MemoryMappedFile is disposed.

```yaml
Type: Boolean
Parameter Sets: CreateFromFile6
Aliases:

Required: True
Position: 6
Default value: False
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFileAccess
One of the enumeration values that specifies the type of access allowed to the memory-mapped file.
The default is ReadWrite.

```yaml
Type: MemoryMappedFileAccess
Parameter Sets: CreateFromFile6, CreateFromFile5, MemoryMappedFileOptions, MemoryMappedFileAccess
Aliases: access
Accepted values: ReadWrite, Read, Write, CopyOnWrite, ReadExecute, ReadWriteExecute

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFileOptions
A bitwise combination of enumeration values that specifies memory allocation options for the memory-mapped file.

```yaml
Type: MemoryMappedFileOptions
Parameter Sets: MemoryMappedFileOptions
Aliases: options
Accepted values: None, DelayAllocatePages

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Name
A name to assign to the memory-mapped file, or null for a MemoryMappedFile that you do not intend to share across processes.

```yaml
Type: String
Parameter Sets: Default, CreateFromFile6, CreateFromFile5, CreateFromFile4, CreateFromFile3, MemoryMappedFileOptions, MemoryMappedFileAccess
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
Parameter Sets: CreateFromFile5, CreateFromFile4, CreateFromFile3, FileMode, CreateFromFile
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Size
The maximum size, in bytes, to allocate to the memory-mapped file.

```yaml
Type: Int64
Parameter Sets: Default, CreateFromFile6, CreateFromFile5, CreateFromFile4, MemoryMappedFileOptions, MemoryMappedFileAccess
Aliases: capacity

Required: True
Position: 2
Default value: 0
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile
## NOTES
- FunctionName      :   New-MemoryMappedFile
- Created by        :   lmissel
- Date Modified     :   07/10/2021 09:00:00
- More info         :   https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/