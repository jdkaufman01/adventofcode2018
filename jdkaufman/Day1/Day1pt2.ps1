$changes = Get-Content C:\Users\jdkaufman\GitHub\adventofcode2018\jdkaufman\Day1\input.txt 

$start = 0 

$result = $start 

$i = 0

Do{

    If($i -lt $changes.length){

        Write-Output $i

        $i++

    }
    Else{$i = 0}  

    $result += $changes[$i]

    If( $resultarray.contains($result) -eq $false) {

        [array]$resultarray += $result  

    }
    Else{

        $stop = $true 

    }
    

}
Until($stop)