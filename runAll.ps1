

try{
	start-process powershell -arg "C:\Users\Luke Shi\Desktop\Trading\ftsea50.ps1"
	start-process powershell -arg "C:\Users\LUke Shi\Desktop\Trading\m20.ps1"

	#start-process powershell -arg C:\Users\Luke Shi\Desktop\m20B.ps1
	"done"
}

catch{
	"oops"
	$_.exception.getType().fullname
    	$_.exception
}