---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# New-MemoryMappedFile

## SYNOPSIS
Erzeugt oder öffnet eine Speicherabbilddatei im Systemspeicher oder erstellt eine Speicherabbilddatei aus einer vorhandenen Datei.

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
Erzeugt oder öffnet eine Speicherabbilddatei im Systemspeicher oder erstellt eine Speicherabbilddatei aus einer vorhandenen Datei.

Speicherabbilddateien ermöglichen es Programmierern, mit extrem großen Dateien zu arbeiten, da der Speicher gleichzeitig verwaltet werden kann und sie einen vollständigen wahlfreien Zugriff auf eine Datei ermöglichen, ohne dass ein Suchlauf erforderlich ist. Speicherabbilddateien können auch von mehreren Prozessen gemeinsam genutzt werden.

Eine Speicherabbilddateiv kann mit einem optionalen Namen verknüpft werden, der die gemeinsame Nutzung der Speicherabbilddatei mit anderen Prozessen ermöglicht.

## EXAMPLES

### Example 1: Erstellen Sie eine neue Speicherabbilddatei. (Default)
```powershell
PS C:\> New-MemoryMappedFile -Name "Test" -Size 1024

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```

Dieser Befehl erstellt eine speicherabgebildete Datei mit der angegebenen Kapazität im Systemspeicher.

### EXAMPLE 2: Erstellen Sie eine neue Speicherabbilddatei.
```powershell
PS C:\> New-MemoryMappedFile -Name "Test" -Size 1024 -MemoryMappedFileAccess ReadWriteExecute

SafeMemoryMappedFileHandle
--------------------------
Microsoft.Win32.SafeHandles.SafeMemoryMappedFileHandle
```
Mit diesem Befehl wird eine Speicherabbilddatei mit der angegebenen Kapazität und Zugriffsart im Systemspeicher erstellt.

## PARAMETERS

### -CreateOrOpen
Erzeugt eine neue leere Speicherabbilddatei oder öffnet eine vorhandene Speicherabbilddatei, falls eine solche existiert.

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
Zugriffsmodus; muss Offen sein.

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
Der Dateistrom der vorhandenen Datei.

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
Ein Wert, der angibt, ob ein Handle auf die Speicherabbilddatei an einen Kindprozess vererbt werden kann.
Der Standardwert ist None.

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
Ein Wert, der angibt, ob der Quelldateistrom geschlossen werden soll, wenn die Speicherabbilddatei entsorgt wird.

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
Einer der Aufzählungswerte, der die Art des erlaubten Zugriffs auf die im Speicher abgebildete Datei angibt.
Der Standardwert ist ReadWrite.

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
Eine bitweise Kombination von Aufzählungswerten, die Speicherzuweisungsoptionen für die Speicherabbilddatei angibt.

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
Ein Name, der der Speicherabbilddatei zugewiesen werden soll, oder null für eine Speicherabbilddatei, die Sie nicht prozessübergreifend nutzen wollen.

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
Der Pfad zur zuzuordnenden Datei.

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
Die maximale Größe in Byte, die der speicherabgebildeten Datei zugewiesen werden soll.

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
Fordert Sie vor der Ausführung des Cmdlets zur Bestätigung auf.

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
Zeigt an, was passieren würde, wenn das Cmdlet ausgeführt wird.
Das Cmdlet wird nicht ausgeführt.

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
