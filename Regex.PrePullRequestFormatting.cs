
namespace AAAA
{
    public class AAAAA
    {
        public string Name
        {
            get;
            set;
        }



    }
    var a = "";
}
[Test]
public class Test
{
}

// (?<=\}[\s]?\n)\s+\n(?=.*\}) - match blank between consecutive closing brackets
// (?<=^[\s]?\n)^\s+?\n - match blank after a blank line 

// ((?<=\}[\s]?\n)\s+\n(?=.*\}))|((?<=^[\s]?\n)^\s+?\n) - BOTH OF THE ABOVE
// \t+(?=$) - match trailing tabs
// (?<=^)\t - match starting tabs

// fing Types for CLR type replacements
    // (?<=[\W\s])string(?=[.,>[\s]) find string in betwwen non word character
        
    // (?<=[<(\s])int(?=[,[>)?\s]) find int as type 

    // (?<=[<(\s])decimal(?=[,[>)?\s])

    // (?<=[\W\s])boolean(?=[\W\s]) 

    // (?<=[<(\s])decimal(?=[,[>)?\s])

// renaming files
    // match filename
        // _UnitTests(?=.cs) find piece to replace


get-childitem . -recurse | where {$_.extension -eq ".cs"} | % {
>>      Rename-Item $_.FullName -NewName $_.FullName.Regex
>> }

Remove-Item -Path ".\*.cs" -Recurse // removes all items *.cs

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