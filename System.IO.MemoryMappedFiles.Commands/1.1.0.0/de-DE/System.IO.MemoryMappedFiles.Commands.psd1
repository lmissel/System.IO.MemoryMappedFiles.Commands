ConvertFrom-StringData @'
ArgumentOutOfRangeException		=	Capacity/Size ist kleiner oder gleich null (null) - oder - access ist kein gültiger MemoryMappedFileAccess-Aufzählungswert.
ArgumentException			=	MapName/Name ist eine leere Zeichenkette - oder - der Zugriff ist mit dem Aufzählungswert write auf "nur Schreibzugriff" eingestellt.
PlatformNotSupportedException		=	.NET 5 und höher und nur .NET Core: Aufrufe des Cmdlets "New-MemoryMappedFile" mit einer benannten Datei, die im Speicher zugeordnet ist (d. h. ein MapName ohne Null), werden nur auf Windows-Betriebssystemen unterstützt.
'@