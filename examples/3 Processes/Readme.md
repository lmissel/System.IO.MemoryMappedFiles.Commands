## System.IO.MemoryMappedFiles.Commands
This PowerShell module provides functions for so-called memory mapped files. Memory mapped files allow programmers to work with very large files because the memory can be managed simultaneously. Memory mapped files can also be used by multiple processes, allowing data to be shared across multiple PowerShell instances using memory mapped files.

Similarly, reading of existing files is possible, which allows faster access to the data is made possible.

# Example from Microsoft Docs
The following example is composed of three separate processes (console applications) that write Boolean values to a memory-mapped file. The following sequence of actions occur:

- Process A creates the memory-mapped file and writes a value to it.

- Process B opens the memory-mapped file and writes a value to it.

- Process C opens the memory-mapped file and writes a value to it.

- Process A reads and displays the values from the memory-mapped file.

- After Process A is finished with the memory-mapped file, the file is immediately reclaimed by garbage collection.

To run this example, do the following:

- In the first Command window, run Process A.

- In the second Command window, run Process B.

- Return to Process A and press ENTER.

- In the third Command window, run Process C.

- Return to Process A and press ENTER.

- The output of Process A is as follows:

````Output
Start Process B and press ENTER to continue.  
Start Process C and press ENTER to continue.  
Process A says: Hello World!
Process B says: Hello World!
Process C says: Hello World!
````

### Process A

````PowerShell
Import-Module System.IO.MemoryMappedFiles.Commands

$MemoryMappedFile = New-MemoryMappedFile -Name "Test" -Size 1024

[System.Threading.Mutex] $mutex = [System.Threading.Mutex]::new($true, "testmapmutex")

Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Process A says: Hello World!"

$mutex.ReleaseMutex()

[Console]::WriteLine("Start Process B and press ENTER to continue.")
Read-Host

[Console]::WriteLine("Start Process C and press ENTER to continue.")
Read-Host

[void] $mutex.WaitOne()

Read-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile

$mutex.ReleaseMutex()
````

### Process B

````PowerShell
Import-Module System.IO.MemoryMappedFiles.Commands

$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

[System.Threading.Mutex] $mutex = [System.Threading.Mutex]::OpenExisting("testmapmutex")
$mutex.WaitOne()

Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Process B says: Hello World!" -Append

$mutex.ReleaseMutex()
````

### Process C

````PowerShell
Import-Module System.IO.MemoryMappedFiles.Commands

$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

[System.Threading.Mutex] $mutex = [System.Threading.Mutex]::OpenExisting("testmapmutex")
$mutex.WaitOne()

Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Process C says: Hello World!" -Append

$mutex.ReleaseMutex()
````

## Remarks
Use this method to create a memory-mapped file that is not persisted (that is, not associated with a file on disk), which you can use to share data between processes.