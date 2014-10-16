                    *****************************************
                    *                                       *
                    *  THE P5 PASCAL COMPILER/INTERPRETER   *
                    *                                       *
                    *****************************************

============================= PURPOSE AND HISTORY ==============================

Included here is the Pascal source of a public-domain Pascal compiler and
interpreter, the P5 compiler and interpreter. It is coded entirely in
Pascal, and produces a high-level so-called intermediate code as output.

P5 is a new version in the Pascal-P series compilers created at ETH in
Zurich. It was a model compiler distributed for the purpose of porting the
Pascal language.

The last compiler from Zurich was P4, which compiled a subset of the language
Pascal. P5 is an updated version that compiles the entire language, and is
compliant with the ISO 7185 Pascal standard.

The original article that was sent along with the P4 compiler is at:

http://www.standardpascal.org/The_Pascal_P_Compiler_implementation_notes.pdf

The entire compiler and interpreter is documented in the book:

Pascal Implementation: The P4 Compiler and Interpreter, by Steven Pemberton
and Martin Daniels, Ellis Horwood, ISBN: 0-13-653-0311 (also available in
Japanese). 

It was distributed by John Wiley in other countries, but now that Prentice Hall
has taken over Ellis Horwood, that will have changed. 

Steven Pemberton is contactable by email as Steven.Pemberton@cwi.nl. He did not
write the compiler, only documented it in the book. 

The entire book (with illustrations) is available online at:

http://homepages.cwi.nl/~steven/pascal/book/

============================== FILES IN THIS PACKAGE ===========================

Note: for script files, both a DOS/Windows (X.bat) and bash script (X) are
provided. Their function is identical, one is for use with the DOS/Windows
command shell, the other for bash shell.

Directory: P5 ******************************************************************

readme.txt     - The file you are reading

pcom.pas       - The compiler source in Pascal

pcom.exe       - The IP Pascal compiled pcom binary for Windows. See comments
                 below for how to use this. All of the supplied batch files are
                 customized for this version.

pint.pas       - The interpreter source in Pascal

pint.exe       - The IP Pascal compiled pint binary for Windows. See comments
                 below for how to use this. All of the supplied batch files are
                 customized for this version.

p5.bat         - A batch file that compiles and runs a single Pascal program.

                 *** You will need to change this to fit your particular Pascal
                     system ***

                 It uses input and output from the terminal, so is a good way to
                 run arbitrary programs.

compile.bat
compile        - Batch mode compile for P5. It takes all input and output from
                 supplied files, and is used by all of the other testing scripts
                 below.

                 *** You will need to change this to fit your particular Pascal
                     system ***

run.bat
run            - Batch mode run for P5. It takes all input and output from
                 supplied files, and is used by all of the other testing
                 scripts below.

                 *** You will need to change this to fit your particular Pascal
                     system ***

cpcom.bat
cpcom          - Script file to compile the compiler side of P5 to binary on
                 your computer.

                 *** You will need to change this to fit your particular Pascal
                     system ***

cpint.bat
cpint          - Script file to compile the interpreter side of P5 to binary on
                 your computer.

                 *** You will need to change this to fit your particular Pascal
                     system ***

testprog.bat
testprog       - An automated testing batch file. Runs a given program with the
                 input file, delivering an output file, then compares to a
                 reference file.

                 Testprog is used to test the following program files for p5:
                 hello, roman, match, startrek, basics and iso7185pat.


cpcoms.bat
cpcoms         - Self compile, run and check the pcom.pas file. This batch
                 file compiles pcom.pas, then runs it on the interpreter
                 and self compiles it, and checks the intermediate files
                 match.

cpints.bat
cpints         - Self compile, run and check the pint.pas file. This batch
                 file compiles pint.pas and iso7185pat.pas, then runs
                 pint on itself and then runs iso7185pat.pas, and checks
                 the result file.

regress.bat
regress        - The regression test simply runs all of the possible tests
                 through P5. It is usually run after a new compile of P5, or
                 any changes made to P5.

configure.bat
configure      - Sets the current compiler to use to create P5 binaries.

diffnole.bat
diffnole       - Runs a diff, but ignoring line endings (DOS/Windows vs. Unix).

fixeol.bat
fixeol         - Arranges the line endings on bash scripts to be Unix, and those
                 of the DOS/Windows scripts to be DOS/Windows line endings.
                 This is required because the editors on the respective systems
                 insert their own line endings according to system, and this
                 can cause problems when they are run on a different system.

build.bat
build          - Build the compiler and interpreter. Just runs cpcom and cpint.

todo.txt       - Contain a list of "to do" items in P5.

news.txt       - Contains various information about the current release.

iso7185.html
iso7185.pdf    - The full ISO 7185 Pascal standard, in html and pdf forms.

iso7185rules.html - 

                 A description of the ISO 7185 Pascal language.

The_Programming_Language_Pascal_1973.pdf - 

                 Niklaus Wirth's description of the Pascal language, the last
                 version to come from ETH. This is the equivalent of the
                 "Report", from "Pascal user's manual and report [Jensen and
                 Wirth].

Directory: sample_programs *****************************************************

hello.pas      - One of several test programs used to prove the P5 system.
                 This is the standard "hello, world" program.

hello.inp      - Input to hello for automated testing.

hello.cmp      - Hello compare file for automated testing.

roman.pas      - A slightly more complex test program, prints roman numerals.
                 From Niklaus Wirth's "User Manual and Report".

roman.inp      - Input file for roman automated testing.

roman.cmp      - Compare file for roman automated testing.

match.pas      - A game, place "match" a number game.

match.inp      - Input file for match automated testing.

match.cmp      - Compare file for match automated testing.

match.bas      - The basic version of the match game.

startrek.pas   - The startrek game.

startrek.inp   - Startrek input file.
 
startrek.cmp   - Startrek compare file.

basics.pas     - A tiny basic interpreter in Pascal.

basics.inp     - Input test file for basics. In fact, it is a basic verion of
                 "match" above.

basics.cmp     - Compare file for basics.

Directory: standard_tests ******************************************************

iso7185pat.pas - The Pascal Acceptance Test. This is a single Pascal source
                 that tests how well a given Pascal implementation obeys
                 ISO 7185 Pascal. It can be used on P5 or any other Pascal
                 implementation.

iso7185pat.inp - The input file for the Pascal acceptance test.

iso7185pat.cmp - Contains the output from the PAT file with the IP Pascal
                 compiled P5 executables above.

iso7185pats.cmp - Contains the output from the PAT file resulting from the 
                  cpints run. This is slightly different than the normal
                  run.

Directory: ip_pascal ***********************************************************

This directory contains scripts specifically modified for IP Pascal.

p5.bat
p5.bat          - The IP Pascal specific version of the p5 script.

compile.bat
compile         - The IP Pascal specific version of the compile script.

run.bat
run             - The IP Pascal specific version of the run script.

cpcom.bat
cpcom           - The IP Pascal specific version of the compile compiler script.

cpint.bat
cpint           - The IP Pascal specific version of the compile interpreter
                  script.

Directory: ip_pascal/windows_X86 ***********************************************

pcom
pint            - Contains binaries compiled by IP Pascal for Windows

Directory: ip_pascal/standard_tests ********************************************

iso7185pat.cmp  - Contains the compare file for iso7185pat for IP Pascal.
iso7185pats.cmp - Contains the compare file for iso7185pats for IP Pascal.

Directory: gpc *****************************************************************

This directory contains scripts specifically modified for GPC.

p5.bat
p5.bat          - The GPC specific version of the p5 script.

compile.bat
compile         - The GPC specific version of the compile script.

run.bat
run             - The GPC specific version of the run script.

cpcom.bat
cpcom           - The GPC specific version of the compile compiler script.

cpint.bat
cpint           - The GPC specific version of the compile interpreter script.

Directory: gpc/linux_X86 *******************************************************

pcom
pint            - Contains binaries compiled by GPC for Linux/Ubuntu

Directory: gpc/windows_X86 *****************************************************

pcom
pint            - Contains binaries compiled by GPC for Windows

Directory: gpc/standard_tests **************************************************

iso7185pat.cmp  - Contains the compare file for iso7185pat for gpc.
iso7185pats.cmp - Contains the compare file for iso7185pats for gpc.


========================= RELIANCE ON UNIX COMMANDS ============================

Most of the scripts in this package, even the DOS/Windows scripts, rely on Unix
commands like cp, sed, diff, chmod and others. I needed a reasonable set of
support tools that were command line callable, and these are all both standard
and reasonable.

For DOS/Windows, I cannot recommend enough the Cygwin toolset enough:

http://www.cygwin.com

But I am sure there are other ways to get these tools.

Note that to run the cygwin tools, you will need the environment variable:

CYGWIN=nodosfilewarning

This prevents cygwin utilities from complaining about dos mode file specifications.

Where possible, I have tried to use DOS/Windows commands. The scripts are
available in both DOS/Windows and bash versions. I could have just required the
use of bash, which is part of the cygwin toolkit, but my aim is not to force
Windows users into a Unix environment.

====================== COMPILING AND RUNNING A PASCAL PROGRAM ==================

To simply compile a run a program, use the P5 batch file:

p5 hello

When a pascal program is run this way, it gets it's input from the terminal 
(you), and prints its results there.

The rules for ISO 7185 Pascal are simple, and you can find a complete overview
of the language in the file:

iso7185rules.html

In this directory.

You will find the complete standard for the language in the files:

iso7185.html - html format
iso7185.pdf  - pdf format

In this directory.

If you were expecting P5 to look like UCSD Pascal or Borland Pascal, please note
you took a wrong turn somewhere. P5 is the original Pascal language. The "Pascal"
languages processed by UCSD and Borland were heavily modified, and very 
incompatible variants that that were brought out years after the original.

All files in P5 are anonymous, and only last the length of the program run. The
exceptions to this are the "prd" and "prr" files, which are used by the P5
compiler to compile and run itself. You can use them, but you really have to
know what you are doing. If you need to read from a file or write to a file
use redirection:

p5 test < myinputfile > myoutputfile

You will find you can get a lot of tasks done this way.

*** However ***, you should note that P5, as was P4, was designed to be a Pascal
compiler porting tool and model implementation FIRST, and not really as a 
practical day to day compiler. If you want a compiler/interpreter for that use,
you want the P6 compiler, which contains things like file access extentions and
a lot more.

============================ COMPILER OPTIONS ==================================

P5 uses a "compiler comment" to indicate options to the compiler, of the form:

(*$option+/-,...*)

This option can appear anywhere a normal comment can. The first character of the
comment MUST be "$". This is followed by any number if option switches separated
by ",". If the option end with "+", it means to turn it on. If the option ends
with "-", it means turn it off.

Example:

(*$l-*)

Turns the listing of the source code OFF.

The following options are available:

t+/-    Print/don't print internal tables after each routine is compiled.

        Default is OFF.

l+/-    List/don't list the source program during compilation.

        Default is ON.

d+/-    Add extra code to check array bounds, subranges, etc.

        Default is ON.

c+/-    Output/don't output intermediate code.

        Default is ON.

==================== EVALUATING YOUR ISO 7185 BASED COMPILER ===================

If you plan to compile and run P5 using your compiler, you should evaluate your
compiler's ISO 7185 Pascal compliance. Of course, simply compiling pcom.pas
and pint.pas is one way to achieve that. But since this package gives you the
ability to fully evaluate your compiler, I would suggest you use it.

First, you need to determine if your compiler has a ISO 7185 Pascal compliance
option and turn it on if needed. I say "if needed", because some compilers
actually change their behavior with the option enabled, and thus it is not
possible to compile and run standard Pascal programs unless the option is on
(a very unfortunate property of a Pascal implementation).

Within ISO 7185 Pascal, there are two characteristics of an implementation that
could cause P5 to not compile, even if the implementation otherwise completely
complies with the standard:

1. Conflict with extended keywords.

2. Character formats.

The first concerns an implementation that defines a new keyword conflicting with
an identifier used in P5. For example, if your compiler has an extended keyword
"variant", this would cause pcom.pas not to compile: it uses that as an
identifier. Ideally, the ISO 7185 Pascal option should turn off such extended
keywords, but you may have to invoke another option to do this. Such extended
keywords are allowed by the ISO 7185 Pascal standard.

The second is simply that the character set in use is not specified by the
ISO 7185 Pascal standard. This is rarely an issue now, because virtually all
implementations are based on either ISO 8859-1 (or ASCII), or are based on a
character set that contains ISO 8859-1 as a base standard (both ISO 8859
and Unicode do this).

It is also possible that an implementation may define special character formats.
For example, the commonly implemented character force sequences are a special
format:

'this is a string\n'

This is valid, since ISO 7185 Pascal does not specify the exact format of
strings.

Fortunately, P5 does not contain nor need force sequences, so this will not
cause problems.

Besides compiling pcom.pas and pint.pas, I strongly recommend you run and check
at least ISO7185pat.pas. This is a fairly comprehensive test of  ISO 7185 Pascal
compliance.

If you wish to run the entire compliance test on your compiler, you simply need
to change or create a version of compile.bat and run.bat for your implementation
that operate with your compiler. 

Finally, building P5, and then running it through a full regression is itself
a good final test of ISO 7185 compliance. It does not substitute for direct
testing of your compiler. P5 could well run correctly even if your compiler is
not fully ISO 7185 Pascal compliant!

For further details concerning the ISO 7185 tests, see "TESTING YOUR NEWLY 
COMPILED P5" below.

======================== COMPILING AND INTEGRATING P5 ==========================

*** YOU DO NOT NEED TO DO COMPILE P5 UNLESS YOU WISH TO EVALUATE OR BUILD WITH
    AN ALTERNATIVE COMPILER ***

There are already binary executables included for Windows and Linux/Ubuntu 
included.

If you wish to rebuild the system with an alternate compiler, first, you must
have a ISO 7185 Pascal compiler available. There are several such compilers,
see:

http://www.standardpascal.org/compiler.html

At the present writing, IP Pascal, GPC, and P5 have been checked to be compliant.
One of these compilers can be selected with:

configure gpc

or

configure ip_pascal

By default, the package is configured for IP Pascal.

Here is a matrix of combinations that have been tried and work:

          Windows/.BAT  Ubuntu/Bash  MAC OS X/Bash
==================================================
IP Pascal    [X]           [ ]           [ ]
GPC          [X]           [X]           [X]

You will probally need to compile pcom.pas and pint.pas with the ISO 7185 Pascal
compatibility mode option on for your compiler. See your documentation for
details.

IF YOU HAVE ANY DOUBTS ABOUT IF YOUR COMPILER IS ISO 7185 COMPLIANT, SKIP TO
THE "TESTING" SECTION BELOW AND TEST YOUR COMPILER FOR COMPATIBLITY.

For GPC and IP Pascal, scripts exist to compile pcom and pint with those 
compilers:

cpcom       - Compile pcom to binary with a specific compiler.

cpint       - Compile pint to binary with a specific compiler.

For convienence, both of these are run by the command:

build       - Compile pcom and pint.

Second, to run the other programs and batch files here, you should modify the
following files to work with your compiler:

p5          - The single program compile and run batch file.

compile     - To compile a file with all inputs and outputs specified.

run         - To run (interpret) the intermediate file with all inputs and
              outputs specified.

The reason you need to change these files is because pcom.pas uses the header
file "prr" to output intermediate code, and pint.pas uses "prd" for input and
"prd" for output. You need to find out how to connect these files in the
program header to external named files.

For example, in IP Pascal, header files that don't bear a standard system
name (like "input" and "output") are simply assigned in order from the command
line. Thus, P5.bat is simply:

pcom %1.p5 < %1.pas
pint %1.p5 %1.out

Where %1 is the first parameter from the command line.

P5.bat lets the input and output from the running program go to the user 
terminal. Compile.bat and run.bat both specify all of the input, output,
prd and prr files. The reason the second files are needed is so that the
advanced automated tests can be run using batch files that aren't dependent
on what compiler you are using.

If your compiler does nothing with header files at all, you will probally have
to change the handling of the prd and prr files to get them connected to
external files. To do this, search pcom and pint for "!!!" (three exclamation
marks). This will appear in comments just before the declaration, reset
and rewrite of these files.

======================== TESTING YOUR NEWLY COMPILED P5 ========================

If you have compiled P5, and hopefully have not got errors to speak of, the next
step is to test out the resulting implementation of P5. To do this, we have
provided you a series of working tests for the compiler. In fact, these tests
work on any ISO 7185 compiler, and you can use them to find out if your
compiler is ISO 7185 Pascal compatible.

Each of the tests are run by the file:

testprog <file> - Compile, run and test a program.

Execute this as follows:

testprog pascalprogram

Where "pascalprogram" is the test file you want to run. Testprog compiles and
runs the specified Pascal source file, and supplies all of the input, saves all
the output, then compares that output to a "gold" standard run.

It is recommended that you run ALL of the provided test files and obtain a good
result. There is no such thing as a "mostly working compiler". If the P5 fails
any test at all there is something wrong.

The tests provided will be described.

******* Hello *******

This is the standard "hello, world" program. It should be the first program you
try with your new P5 compile.

The hello.inp file is empty, since the program does not require input. However,
it must be supplied.

******* Roman *******

This is a small program to write out roman numeral equivalents to arabic numbers
that appeared in "Pascal User's Manual and Report" [Jensen and Wirth]. It 
requires no input.

******* Match *******

Also known as "Nim", it is a numbers game you play with the computer.

******* Startrek *******

This is a classic text version of the startrek game.

******* Basics *******

This is a tiny Basic interpreter written in Pascal. It features strings and 
integers, but no array handling, functions, gosubs or other advanced features.
It is tested by running a tiny Basic version of the "match" game above.
You will find the basic version of match.pas in match.bas.

******* iso7185pat *******

The PAT or Pascal Acceptance Test is a large source file with an attempt to
cover all standard ISO 7185 Pascal language contructs in a test.

iso7185pat is designed to be checked by READING it. Each of the tests in the
PAT are numbered by catagory of test. Each test both prints a result, and tells
you what you should see. For example:

Integer29:  22 s/b 22

The test was integers, 22nd test. The result printed by the code was 22, and
that should match the "should be" of 22.

It is important to understand that there are variations allowed in ISO 7185
implementations for appearance in numbers and other output formats. For
example, booleans can print in any of the following formats:

true
True
TRUE

And all be valid. This is why the result MUST BE CHECKED MANUALLY the first
time it is run on a new compiler. After the file is checked and found valid,
the iso7185pat.lst file is copied to the iso7185pat.cmp file. After that, the
test can be run automatically.

******* PCOM self compile *******

As a finishing touch for testing, P5 can compile itself and verify itself. This
is essentially compiling and running a very large and complex ISO 7185 Pascal
compliant program and checking it automatically.

testprog is NOT used to perform this check. Use the batch file cpcoms.bat.

cpcoms makes a copy of itself that is modified to self compile. This is required
because the prd and prr header files are special files to P5 (just as input
and output), and must not have reset or rewrite applied to them.

This copy is compiled to intermediate code, interpreted, and the interpreted
copy is used to compile itself once again to intermediate code. This
intermediate code is compared to the first intermediate, and the test is good
if they are equal. That is, if the pcom binary verion generates the same
intermediate as the interpreted version, the test passes.

******* PINT self compile *******

As in pcom, a special batch file, cpints.bat is used. Pint is modified, both for
the prd and prr problems discussed above, but also because pint will run on 
itself, and would by definition overflow. This is because all of the variables
statically allocated by pint would not fit within the same space pint itself
declares. So the general store array for pint is reduced.

The modified pint file is compiled, and pint is run on itself to interpret a
compiled intermediate version of iso7185pat. That is, pint stacks on itself
and runs iso7185 on that interpreted copy of pint. Then, the results of this
double interpreted iso7185 are compared to the .cmp file, and the test is
good if they match.

Note that cpints uses a slightly modified version of the iso7185pat.lst file,
iso7185pats.lst, because the sign on and shut down of pint appears twice in the
file, for good reason: pint is being executed on itself! There is also a
separate .cmp file, iso7185pats.cmp.

WARNING: this test takes a LOT of time. On my 2.5 GHZ AMD processor, it takes
3 hours, 9 minutes in IP Pascal, and up to a full day or more with GPC.

******* Regression test *******

All of the tests above are gathered into a single batch file as "regress.bat".
This command is typically used to validate the compiler after making changes to
it.

Because a full regression takes considerable time, it is typically left 
overnight.

========================= COMPILING WITH THE MAC OS X ==========================

At this writing, the easiest method to get the toolset you need to compile P5
on the MAC is to obtain the Xcode toolset, then add GPC.

The P5 toolset is designed to be system independent. It runs equally on Unix
and DOS systems, with various CPUs. To run the test patterns equally well on
both DOS and UNIX based systems, the utility "flip" is used to fix the line
endings on compare pattern files so that they will match using diff, which
unfortunately can only compare files which have identical line ending 
conventions.

On the MAC OS X, the "flip" command does not exist, nor does it seem to be
readily available, nor the alternatives "dos2unix" or "unix2dos". To get around
this, the easiest method is to simply create your own. The following files
are supplied with P5:

deoln.c         - Source code to a DOS line ending filter

ueoln.c         - Source code to a Unix line ending filter

mac_flip_script - A bash script to emulate flip with the above.

make_flip       - A bash script to compile deoln and ueoln, and create the flip
                  script.

Provided that you have a working C compiler (gcc from Xcode above), you should
only need to perform the following:

> make_flip

> sudo cp deoln /usr/bin
> sudo cp ueoln /usr/bin
> sudo cp flip /usr/bin

This will make and install flip into your binary directory.