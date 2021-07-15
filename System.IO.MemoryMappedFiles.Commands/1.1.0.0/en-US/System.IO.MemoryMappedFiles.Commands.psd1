ConvertFrom-StringData @'
ArgumentOutOfRangeException		=	Capacity/Size is less than or equal to null (null) - or - access is not a valid MemoryMappedFileAccess enumeration value.
ArgumentException			=	MapName/Name is an empty string - or - access is set to "write access only" with the write enumeration value.
PlatformNotSupportedException		=	.NET 5 and later and .NET Core only: Calls to the "New-MemoryMappedFile" cmdlet with a named file mapped in memory (i.e., a non-null MapName) are supported only on Windows operating systems.
'@