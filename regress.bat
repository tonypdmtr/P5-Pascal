@echo off
rem
rem Regression test
rem
rem Run the compiler through a few typical programs
rem to a "gold" standard file
rem
call testprog sample_programs\hello
call testprog sample_programs\roman
call testprog sample_programs\match
call testprog sample_programs\startrek
call testprog sample_programs\basics
rem
rem Now run the ISO7185pat compliance test
rem
call testprog standard_tests\iso7185pat
rem
rem Run pcom self compile (note this runs on P5 only)
rem
call cpcoms
rem
rem Run pint self compile (note this runs on P5 only)
rem
call cpints