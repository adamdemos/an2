strMsg = ""
strComputer = "."
intCounter = 0
 
Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")
Set IPConfigSet = objWMIService.ExecQuery("Select IPAddress from Win32_NetworkAdapterConfiguration WHERE IPEnabled = 'True'")
 
For Each IPConfig in IPConfigSet
 If Not IsNull(IPConfig.IPAddress) Then
 For i = LBound(IPConfig.IPAddress) to UBound(IPConfig.IPAddress)
  If Not Instr(IPConfig.IPAddress(i), ":") > 0 Then
    If intCounter > 0 Then
        strMsg = strMsg & vbcrlf & vbtab & IPConfig.IPAddress(i)
    Else
        strMsg = IPConfig.IPAddress(i)
    End If
    intCounter = intCounter + 1
  End If
 Next
 End If
Next
 
Echo strMsg
