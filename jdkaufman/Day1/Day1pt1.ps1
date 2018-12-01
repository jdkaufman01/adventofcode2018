$changes = Get-Content .\Day1\input.txt 

$start = 0 

$result = $start 

For($i = 0; $i -le ($changes.length - 1); $i++ ){

    $result += $changes[$i]

}

$result 