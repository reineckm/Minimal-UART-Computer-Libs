setlocal EnableDelayedExpansion
echo off

if %1.==. (
    echo Usage: make filename [example: make graph.a]
    exit /B
) else (
    echo Making %1
)

REM Replacements
set repla[0]="OUT"
set replb[0]="OUT NOP NOP NOP NOP NOP NOP NOP NOP NOP NOP"
set repla[1]="CLA"
set replb[1]="CLB"
set repla[2]="DEA"
set replb[2]="DEB"
set repla[3]="INA"
set replb[3]="INB"
REM Set the number of Replacments (repla, replb pairs)
set numRepl=3

FOR /L %%i IN (0 1 %numRepl%) DO ( 
   fart -q %1 !repla[%%i]! !replb[%%i]!   
)

asm.exe %1

FOR /L %%i IN (0 1 %numRepl%) DO (   
   fart -q %1 !replb[%%i]! !repla[%%i]!   
)
echo Done