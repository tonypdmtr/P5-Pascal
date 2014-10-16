@echo off
rem
rem Compile file in batch mode using GPC Pascal.
rem
rem Runs a compile with the input and output coming from/
rem going to files.
rem 
rem Execution:
rem 
rem Compile <file>
rem
rem <file> is the filename without extention.
rem
rem The files are:
rem
rem <file>.pas - The Pascal source file
rem <file>.p5  - The intermediate file produced
rem <file>.err - The errors output from the compiler
rem
rem Note that the l+ option must be specified to get a full
rem listing in the .err file (or just a lack of l-).
rem
if not "%1"=="" goto paramok
echo *** Error: Missing parameter
goto stop
:paramok
if exist "%1.pas" goto fileexists
echo *** Error: Missing %1.pas file
goto stop
:fileexists
pcom < %1.pas > %1.err
if not exist "%1.p5" goto nodel1
del %1.p5
:nodel1
cp prr %1.p5
rm prr
chmod +w %1.p5
rem
rem Terminate
rem
:stop
