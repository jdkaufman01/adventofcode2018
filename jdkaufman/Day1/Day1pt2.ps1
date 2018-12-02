$changes = Get-Content C:\Users\jdkaufman\GitHub\adventofcode2018\jdkaufman\Day1\input.txt 

$changes = +3, +3, +4, -2, -4

$start = 0 

$result = $start 

$i = 0

$resulthash = @{}

Do{

    $result += $changes[$i]

    $resulthash["$result"] += 1

    
    If($i -lt ($changes.length -1)){

        Write-Output $i

        $i++

    }
    Else{$i = 0}  


}
Until(($resulthash.values | Sort-Object -unique) -ne 1)

$value = $($resulthash.Keys.Where({$resulthash[$_] -eq 2}))

Write-Output "Duplicate found at - "$value 

