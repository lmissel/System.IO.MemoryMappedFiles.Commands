---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
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

### EXAMPLE 1: Opens an existing memory-mapped file that has the specified name in system memory.
```powershell
PS C:\> Open-MemoryMappedFile -Name "Test"

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
The following example opens a memory-mapped file named `Test` that has already been created.

### EXAMPLE 2: Opens an existing memory-mapped file that has the specified name and access rights in system memory.
```powershell
PS C:\> Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```

The following example opens a memory-mapped file named `Test` that has already been created.

### EXAMPLE 3: Opens an existing memory-mapped file that has the specified name, access rights, and inheritability in system memory.

```powershell
PS C:\> Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl -HandleInheritability Inheritable

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
The following example opens a memory-mapped file named `Test` that has already been created.

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

### System.String

### System.IO.MemoryMappedFiles.MemoryMappedFileRights

### System.IO.HandleInheritability

## OUTPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile

## NOTES

## RELATED LINKS
[New-MemoryMappedFile](New-MemoryMappedFile.md)
[Out-MemoryMappedFile](Out-MemoryMappedFile.md)
[Read-MemoryMappedFile](Read-MemoryMappedFile.md)
[Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)
[Save-MemoryMappedFile](Save-MemoryMappedFile.md)
