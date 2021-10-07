if %PROCESSOR_ARCHITECTURE%==AMD64 SET BGINFO=BGInfo64.exe
if %PROCESSOR_ARCHITECTURE%==x86 SET BGINFO=BGInfo.exe
c:\adm\BGInfo\%BGINFO% c:\adm\BGInfo\BGInfo.bgi /timer:0 /accepteula




