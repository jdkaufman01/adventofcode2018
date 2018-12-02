$changes = Get-Content .\jdkaufman\Day1\input.txt 

$start = 0 

$result = $start 

For($i = 0; $i -lt $changes.length; $i++ ){

    $result += $changes[$i]

}

$result 