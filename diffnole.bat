@echo off
rem
rem Difference without line endings
rem
rem Same as diff, but ignores the DOS/Unix line ending differences.
rem

if not "%1"=="" goto paramok1
echo *** Error: Missing parameter 1
goto stop
:paramok1

if not "%2"=="" goto paramok2
echo *** Error: Missing parameter 2
goto stop
:paramok2

copy %1 %1.tmp > tmp3
copy %2 %2.tmp > tmp3
flip -u -b %1.tmp
flip -u -b %2.tmp
diff %1.tmp %2.tmp
rm -f %1.tmp
rm -f %2.tmp
rm -f tmp3