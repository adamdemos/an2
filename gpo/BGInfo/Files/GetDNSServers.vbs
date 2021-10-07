Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration WHERE IPEnabled = TRUE",,48)
i = 0
For Each objItem in colItems
	i = i + 1
	If Not IsNull(objitem.DNSServerSearchOrder) Then
		Echo Join(objitem.DNSServerSearchOrder, ", ")
	End If
Next
