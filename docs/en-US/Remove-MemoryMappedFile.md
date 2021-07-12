---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Remove-MemoryMappedFile

## SYNOPSIS
Releases the resources used by the MemoryMappedFile.

## SYNTAX

```
Remove-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [<CommonParameters>]
```

## DESCRIPTION
The Remove-MemoryMappedFile function releases the resources used by the MemoryMappedFile.

## EXAMPLES

### EXAMPLE 1: Releases all resources used by the MemoryMappedFile
```powershell
PS C:\> Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
```
Releases all resources used by the MemoryMappedFile.

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
[Read-MemoryMappedFile](Read-MemoryMappedFile.md)
[Save-MemoryMappedFile](Save-MemoryMappedFile.md)
