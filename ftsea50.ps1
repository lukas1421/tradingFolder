
try{
$e = new-object -comobject excel.application
$e.visible = $true
$w = $e.workbooks.open("C:\Users\" + $env:USERNAME + "\Desktop\Trading\FTSE A50 List Jan15.xlsm")
$e.Run('wrapper')

write-host "done"
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