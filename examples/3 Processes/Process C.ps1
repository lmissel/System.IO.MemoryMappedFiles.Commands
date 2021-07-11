Import-Module System.IO.MemoryMappedFiles.Commands

$MemoryMappedFile = Open-MemoryMappedFile -Name "Test"

[System.Threading.Mutex] $mutex = [System.Threading.Mutex]::OpenExisting("testmapmutex")
$mutex.WaitOne()

Out-MemoryMappedFile -MemoryMappedFile $MemoryMappedFile -String "Process C says: Hello World!" -Append

$mutex.ReleaseMutex()