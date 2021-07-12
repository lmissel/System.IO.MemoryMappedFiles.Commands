---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Open-MemoryMappedFile

## SYNOPSIS
Öffnet eine vorhandene benannte im speicherabgebildete Datei im Systemspeicher.

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
Öffnet eine vorhandene im speicherabgebildete Datei, die den angegebenen Namen, die Zugriffsrechte und die Vererbbarkeit im Systemspeicher hat.

## EXAMPLES

### Example 1: Öffnet eine vorhandene Datei mit Speicherzuordnung, die den angegebenen Namen im Systemspeicher hat.
```Powershell
PS C:\> Open-MemoryMappedFile -Name "Test"

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
Das folgende Beispiel öffnet eine im speicherabgebildete Datei mit dem Namen `Test`, die bereits erstellt wurde.

### Example 2: Öffnet eine vorhandene memory-mapped Datei, die den angegebenen Namen und die Zugriffsrechte im Systemspeicher hat.
```Powershell
PS C:\> Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```

Das folgende Beispiel öffnet eine im speicherabgebildete Datei mit dem Namen `Test`, die bereits erstellt worden ist.

### Example 3: Öffnet eine vorhandene im speicherabgebildete Datei, die den angegebenen Namen, die Zugriffsrechte und die Vererbbarkeit im Systemspeicher hat.

```Powershell
PS C:\> Open-MemoryMappedFile -Name "Test" -MemoryMappedFileRights FullControl -HandleInheritability Inheritable

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
Das folgende Beispiel öffnet eine im speicherabgebildete Datei namens `Test`, die bereits erstellt wurde.

## PARAMETERS

### -HandleInheritability
Einer der Aufzählungswerte, der angibt, ob ein Handle auf die im speicherabgebildete Datei an einen Kindprozess vererbt werden kann.
Der Standardwert ist None.

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
Einer der Aufzählungswerte, der die Zugriffsrechte angibt, die für die memory-mapped Datei gelten sollen.

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
Der Name der Memory-mapped Datei.

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
