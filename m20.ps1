
try{
write-host "starting to run"

$e = new-object -comobject excel.application
$e.visible = $true
$w = $e.workbooks.open("C:\Users\Luke Shi\Desktop\Trading\20dma.xlsm")
$e.Run('getRes')

write-host "done"
$d = Get-Date
write-host $d

$w.close($true)
$e.quit()
}

catch{
    "oops"
    #$w1 = $null
    $_.exception.getType().fullname
    $_.exception
    $w.close($false)
    $e.quit()
}
