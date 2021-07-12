---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Save-MemoryMappedFile

## SYNOPSIS
Speichert die MemoryMappedFile in einem angegebenen Pfad.

## SYNTAX

```
Save-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [-Path] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Die Funktion `Save-MemoryMappedFile` speichert die im speicherabgebildete Datei an einem angegebenen Pfad auf der Festplatte ab.

## EXAMPLES

### Example 1: Speichern eines MemoryMappedFile auf die Festplatte.
```Powershell
PS C:\> Save-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -Path "C:\test.dat"
```

Das folgende Beispiel ruft einen `MemoryMappedViewStream` aus einer im speicherabgebildeten Datei ab und schreibt den Wert aus dem Stream in eine Datei auf die Festplatte.

## PARAMETERS

### -MemoryMappedFile
Stellt eine Memory-mapped Datei dar.

```yaml
Type: MemoryMappedFile
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Pfad
Stellt einen Pfad dar.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile

### System.String

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
[New-MemoryMappedFile](New-MemoryMappedFile.md)
[Open-MemoryMappedFile](Open-MemoryMappedFile.md)
[Out-MemoryMappedFile](Out-MemoryMappedFile.md)
[Read-MemoryMappedFile](Read-MemoryMappedFile.md)
[Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)

