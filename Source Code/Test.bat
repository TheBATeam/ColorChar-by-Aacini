@Echo off
SetLocal EnableDelayedExpansion
cls

Title ColorChar Demo File by TheBATeam - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a
Mode 80,25

:Main
Cls
Echo.
Echo. The Default Color of CMD is GREEN right now...
Echo. But, we can print 
Colorchar /0c "Red Colored"
Echo. Text in between - without using multiple steps
Colorchar /0e "Yellow Colored"
Echo. is also possible. :^)
Echo.
Echo. Trying some ASCII Codes...
Echo. 
For /l %%A in (1,1,255) do (
	Set /A "_ColorCode=%%~A%%10"
	Colorchar /0!_ColorCode:~0,1! %%~A
)
pause >nul