---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version:
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

### BEISPIEL 1
```
Open-MemoryMappedFile -Name "Test"
```

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

## OUTPUTS

## NOTES
FunctionName : New-MemoryMappedFile
Created by : lmissel
Date Modified : 10/07/2021 09:00:00
More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/

## RELATED LINKS

[More informations about this function:
https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/New-MemoryMappedFile.md]()

