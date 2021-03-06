#
# Makefile for Pascal-p5
#
# Makes the main compiler interpreter set.
#
PC=gpc
CFLAGS=--classic-pascal-level-0 --no-warnings --transparent-file-names --no-range-checking

all: pcom pint

pcom: source/pcom.pas
	$(PC) $(CFLAGS) -o bin/pcom source/pcom.pas
	
pint: source/pint.pas
	$(PC) $(CFLAGS) -o bin/pint source/pint.pas
	
clean:
	rm -f bin/pcom bin/pint 
	find . -name "*.p5" -type f -delete
	find . -name "*.p4" -type f -delete
	find . -name "*.p2" -type f -delete
	find . -name "*.out" -type f -delete
	find . -name "*.lst" -type f -delete
	find . -name "*.obj" -type f -delete
	find . -name "*.sym" -type f -delete
	find . -name "*.int" -type f -delete
	find . -name "*.dif" -type f -delete
	find . -name "*.err" -type f -delete
	find . -name "*.ecd" -type f -delete
	find . -name "*.tmp" -type f -delete
	find . -name "*.diflst" -type f -delete
	find . -name "*.ecdlst" -type f -delete
	find . -name "*.nocerr" -type f -delete
	find . -name "*.noerr" -type f -delete
	find . -name "*.norerr" -type f -delete
	find . -name "prd" -type f -delete
	find . -name "prr" -type f -delete
	find . -name "temp" -type f -delete
	find . -name "tmp" -type f -delete
	find . -name "*~" -type f -delete
	find . -name "temp?" -type f -delete

#
# Make ready for repository
#
# This target makes the code ready for the repository.
# We configure for GPC 32 bit as normal target, and clean
# all files.
#
repo_ready:
	configure --gpc --32
	
#
# Make flip program
#
flip: c_support\flip.c
	gcc -o bin\flip c_support\flip.c

#
# Make archive
#
archive:
	rm -f pascal-p5.tar.gz
	tar --exclude='./.git' --exclude='./.cproject' --exclude='./.project' --exclude='./pascal-p5*.tar.gz' -zcvf pascal-p5.tar.gz .