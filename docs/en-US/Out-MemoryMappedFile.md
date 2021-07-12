---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version: https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/
schema: 2.0.0
---

# Out-MemoryMappedFile

## SYNOPSIS
Writes data to the MemoryMappedFile.

## SYNTAX

```
Out-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [-String] <String> [-Append] [<CommonParameters>]
```

## DESCRIPTION
The Out-MemoryMappedFile function retrieves a MemoryMappedViewStream of a memory mapped file and writes a value to the stream for interprocess communication.

## EXAMPLES

### EXAMPLE 1: Write in to memory-mapped file.
```powershell
PS C:\> Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Hello World!"
```
The following example obtains a MemoryMappedViewStream of a memory-mapped file and writes a value to the stream for inter-process communication.

## PARAMETERS

### -Append
Specifies whether to add content to the end of a resource.
Otherwise, the content is replaced with the value.

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

### -String
The string to write to the stream.

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

