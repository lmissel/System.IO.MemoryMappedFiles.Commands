---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Out-MemoryMappedFile

## SYNOPSIS
Schreibt Daten in die MemoryMappedFile.

## SYNTAX

```
Out-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [-String] <String> [-Append] [<CommonParameters>]
```

## DESCRIPTION
Die Funktion `Out-MemoryMappedFile` ruft einen `MemoryMappedViewStream` einer im speicherabgebildeten Datei ab und schreibt einen Wert in den Stream für die Interprozesskommunikation.

## EXAMPLES

### Example 1: In eine im speicherabgebildeten Datei schreiben.
```Powershell
PS C:\> Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Hello World!"
```
Das folgende Beispiel ruft einen `MemoryMappedViewStream` einer im speicherabgebildeten Datei ab und schreibt einen Wert in den Stream für die Interprozesskommunikation.

## PARAMETERS

### -Append
Gibt an, ob der Inhalt am Ende einer Ressource angehängt werden soll.
Andernfalls wird der Inhalt durch den Wert ersetzt.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: False
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -MemoryMappedFile
Stellt eine memory-mapped Datei dar.

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

### -String
Die Zeichenkette, die in den Stream geschrieben werden soll.

```yaml
Type: String
Parameter Sets: (All)
Aliases: value

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.IO.MemoryMappedFiles.MemoryMappedFile

### System.String

### System.Management.Automation.SwitchParameter

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
[New-MemoryMappedFile](New-MemoryMappedFile.md)
[Open-MemoryMappedFile](Open-MemoryMappedFile.md)
[Read-MemoryMappedFile](Read-MemoryMappedFile.md)
[Remove-MemoryMappedFile](Remove-MemoryMappedFile.md)
[Save-MemoryMappedFile](Save-MemoryMappedFile.md)

