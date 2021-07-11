---
external help file: System.IO.MemoryMappedFiles.Commands-help.xml
Module Name: System.IO.MemoryMappedFiles.Commands
online version:
schema: 2.0.0
---

# Save-MemoryMappedFile

## SYNOPSIS
Saves the MemoryMappedFile to a specified path.

## SYNTAX

```
Save-MemoryMappedFile [-MemoryMappedFile] <MemoryMappedFile> [-Path] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The Save-MemoryMappedFile function saves the MemoryMappedFile to a specified path.

## EXAMPLES

### BEISPIEL 1
```
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
```

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

### -Path
Represents a path.

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
Prompts you for confirmation before running the cmdlet.

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
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

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

## OUTPUTS

### System.Object
## NOTES
FunctionName : Remove-MemoryMappedFile
Created by : lmissel
Date Modified : 10/07/2021 09:00:00
More info : https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/

## RELATED LINKS

[More informations about this function:
https://github.com/lmissel/System.IO.MemoryMappedFiles.Commands/Help/en-US/Remove-MemoryMappedFile.md]()

