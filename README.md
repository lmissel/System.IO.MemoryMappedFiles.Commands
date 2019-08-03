# System.IO.MemoryMappedFiles.Commands
Dieses PowerShell Module stellt Funktionen für sogenannte Speicherabbilddateien zur Verfügung. Speicherabbilddateien ermöglichen Programmierern mit sehr großen Dateien arbeiten zu können, da der Speicher gleichzeitig verwaltet werden kann. Speicherabbilddateien können auch von mehreren Prozessen verwendet werden, wodurch der Austausch von Daten, mit Hilfe von Speicherabbilddateien, über mehrere PowerShell Instanzen ermöglicht werden kann.

Ebenso ist das Einlesen von vorhandenen Dateien möglich, wodurch ein schnellerer Zugriff auf die Daten ermöglicht wird.

## Voraussetzungen

Um dieses Module nutzen zu können, ist .Net Standard notwendig. Dies sollte bei Windows Systemen standardmäßig zur Verfügung stehen.

## Installation

Kopieren Sie das Module in eins der PowerShell Module Pfade.

## Verwendung

In diesem Beispiel wird gezeigt und erläutert, wie das Module verwendet werden kann.

```PowerShell
# Laden des Modules
Import-Module System.IO.MemoryMappedFiles.Commands

# Erstellt eine im Speicher abgebildete Datei mit der angegebenen Kapazität im Systemspeicher.
$MemoryMappedFile = New-MemoryMappedFile -Name "Test" -Size 1024

# Erstellt einen Stream, der einer Ansicht der Speicherabbilddatei zugeordnet ist und fügt den String als Stream hinzu.
Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Mein Text."

# Erstellt einen Stream, der einer Ansicht der Speicherabbilddatei zugeordnet ist und liest diesen Stream aus.
Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

# Öffnet eine vorhandene im Speicher abgebildete Datei mit dem angegebenen Namen im Systemspeicher.
Open-MemoryMappedFile -Name "Test"

# Gibt alle vom MemoryMappedFile verwendeten Ressourcen frei.
Remove-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile
```
