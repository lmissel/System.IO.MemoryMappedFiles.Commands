---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Read-MemoryMappedFile

## SYNOPSIS
Read data from the MemoryMappedFile.

## SYNTAX

```
Read-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [<CommonParameters>]
```

## DESCRIPTION
The Read-MemoryMappedFile function retrieves a MemoryMappedViewStream of a memory mapped file and reads the value from the stream for interprocess communication.

## EXAMPLES

### EXAMPLE 1: Read a memory mapped file stream.
```powershell
PS C:\> Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

Hello World!
```
The following example obtains a MemoryMappedViewStream of a memory-mapped file and read the value from the stream for inter-process communication.

## PARAMETERS

### -MemoryMappedFile
Represents a memory-mapped file.

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

