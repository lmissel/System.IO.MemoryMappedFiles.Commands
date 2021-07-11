---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version:
schema: 2.0.0
---

# Open-MemoryMappedFile

## SYNOPSIS
Opens an existing named memory-mapped file in system memory.

## SYNTAX

### Default (Default)
```
Open-MemoryMappedFile [-Name] <String> [<CommonParameters>]
```

### HandleInheritability
```
Open-MemoryMappedFile [-Name] <String> [-MemoryMappedFileRights] <MemoryMappedFileRights>
 [-HandleInheritability] <HandleInheritability> [<CommonParameters>]
```

### MemoryMappedFileRights
```
Open-MemoryMappedFile [-Name] <String> [-MemoryMappedFileRights] <MemoryMappedFileRights> [<CommonParameters>]
```

## DESCRIPTION
Opens an existing memory-mapped file that has the specified name, access rights, and inheritability in system memory.

## EXAMPLES

### EXAMPLE 1
```
Open-MemoryMappedFile -Name "Test"
```

### EXAMPLE 2
```
Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl
```

### EXAMPLE 3
```
Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl -HandleInheritability Inheritable
```

## PARAMETERS

### -HandleInheritability
One of the enumeration values that specifies whether a handle to the memory-mapped file can be inherited by a child process.
The default is None.

```yaml
Type: HandleInheritability
Parameter Sets: HandleInheritability
Aliases: inheritability
Accepted values: None, Inheritable

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFileRights
One of the enumeration values that specifies the access rights to apply to the memory-mapped file.

```yaml
Type: MemoryMappedFileRights
Parameter Sets: HandleInheritability, MemoryMappedFileRights
Aliases: desiredAccessRights
Accepted values: CopyOnWrite, Write, Read, ReadWrite, Execute, ReadExecute, ReadWriteExecute, Delete, ReadPermissions, ChangePermissions, TakeOwnership, FullControl, AccessSystemSecurity

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Name
The name of the memory-mapped file.

```yaml
Type: String
Parameter Sets: (All)
Aliases: mapName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile
## NOTES
- FunctionName : New-MemoryMappedFile
- Created by : lmissel
- Date Modified : 10/07/2021 09:00:00
- More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/

## RELATED LINKS

[More informations about this function.]
(https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/New-MemoryMappedFile.md)

