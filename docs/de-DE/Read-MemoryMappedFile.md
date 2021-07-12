---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Read-MemoryMappedFile

## SYNOPSIS
Lesen von Daten aus einer im speicherabgebildeten Datei.

## SYNTAX

```
Read-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [<CommonParameters>]
```

## DESCRIPTION
Die Funktion `Read-MemoryMappedFile` ruft einen `MemoryMappedViewStream` einer m speicherabgebildeten Datei ab und liest den Wert aus dem Stream für die Interprozesskommunikation aus.

## EXAMPLES

### Example 1: Lesen eines Memory-Mapped-File-Streams.
```Powershell
PS C:\> Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

Hallo Welt!
```
Das folgende Beispiel ruft einen `MemoryMappedViewStream` einer im speicherabgebildeten Datei ab und liest den Wert aus dem Stream für die Interprozesskommunikation aus.

## PARAMETERS

### -MemoryMappedFile
Stellt eine im speicherabgebildete Datei dar.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[New-MemoryMappedFile](New-MemoryMappedFile.md)
[Open-MemoryMappedFile](Open-MemoryMappedFile.md)
[Out-MemoryMappedFile](Out-MemoryMappedFile.md)
[Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)
[Save-MemoryMappedFile](Save-MemoryMappedFile.md)

