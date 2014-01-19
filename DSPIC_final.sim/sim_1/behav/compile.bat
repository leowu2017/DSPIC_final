@echo off
rem  Vivado(TM)
rem  compile.bat: a Vivado-generated XSim simulation Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.

set PATH=%XILINX%\lib\%PLATFORM%;%XILINX%\bin\%PLATFORM%;D:/Xilinx/SDK/2013.3/bin/nt64;D:/Xilinx/Vivado/2013.3/ids_lite/EDK/bin/nt64;D:/Xilinx/Vivado/2013.3/ids_lite/EDK/lib/nt64;D:/Xilinx/Vivado/2013.3/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2013.3/ids_lite/ISE/lib/nt64;D:/Xilinx/Vivado/2013.3/bin;%PATH%
set XILINX_PLANAHEAD=D:/Xilinx/Vivado/2013.3

xelab -m64 --debug typical --relax -L work -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav --prj E:/DSP/DSPIC_final.sim/sim_1/behav/testbench.prj   work.testbench   work.glbl
if errorlevel 1 (
   cmd /c exit /b %errorlevel%
)
