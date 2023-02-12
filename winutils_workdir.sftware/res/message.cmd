@echo off
cls
title A message - Windows Utilities
goto main
	--------------------------------------
		FastMessage Technics
	  Copyright (c) 2023 by James Henry
	--------------------------------------
:main
echo Someone sent you:
echo %1
pause >> cached.dat
exit