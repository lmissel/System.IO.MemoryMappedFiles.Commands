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