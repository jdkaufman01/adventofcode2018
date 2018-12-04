$changes = Get-Content C:\Users\jdkaufman\GitHub\adventofcode2018\jdkaufman\Day1\input.txt 

$start = 0 

$result = $start 

$i = 0

$resulthash = @{}

Do{

    $result += $changes[$i]

    #Write-Output "result is $result"

    $resulthash["$result"] += 1

    
    If($i -lt ($changes.length -1)){

       # Write-Output "i is $i"

        $i++

    }
    Else{$i = 0}  


}
Until($resulthash.ContainsValue(2)) 

$value = $($resulthash.Keys.Where({$resulthash[$_] -eq 2}))

Write-Output "Duplicate found at - "$value 

