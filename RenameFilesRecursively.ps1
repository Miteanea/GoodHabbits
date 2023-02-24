Write-Output "rename recursively"
get-childitem . -recurse | `
    Where-Object {$_.extension -eq ".cs"} | `
    ForEach-Object { `
        Write-Output $_.FullName
        Rename-Item `
        -Path $_.FullName `
        -NewName ($_.FullName -replace "_(Unit|Func)" , "")
        Write-Output $_.FullName
    }