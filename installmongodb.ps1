Invoke-WebRequest -Uri 'https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.4-signed.msi' -OutFile 'C:\Users\adminuser\Downloads\mongodb-installer.msi'
Start-Process -FilePath msiexec -ArgumentList '/i C:\Users\adminuser\Downloads\mongodb-installer.msi /quiet' -Wait
$envPath = [System.Environment]::GetEnvironmentVariable('Path', [System.EnvironmentVariableTarget]::Machine)
[System.Environment]::SetEnvironmentVariable('Path', "$envPath;C:\Program Files\MongoDB\Server\7.0.4\bin", [System.EnvironmentVariableTarget]::Machine)
