#
# Preprocessing options
#
#PREP = scorep
PREP = 

#
# Compile options
#

FC = $(PREP) gfortran
CC = 

FFLAGS = -O3 -pg -ggdb  -Wall -fcheck=all -Wno-unused-dummy-argument #-ftest-coverage -fprofile-arcs
FFLAGS = -O3
CFLAGS = 

#
# Where to hide things
#

BIN_DIR = $(CURDIR)/bin
SRC_DIR = $(CURDIR)/src
LIB_DIR = $(CURDIR)/lib


#
# Any needed libraries
#

LIBS = 

#
# Object files
#

EXEC_OBJ = $(SRC_DIR)/precision.o \
           $(SRC_DIR)/welcome.o \
           $(SRC_DIR)/trygon.o

#
# Targets
#

all     :
	make trygon
	make clean

trygon  : $(EXEC_OBJ)
	@echo ""
	@echo "Building an executable for Trygon"
	$(MKDIR) $(BIN_DIR)
	$(FC) -o $(BIN_DIR)/trygon.exe $(FFLAGS) $(EXEC_OBJ) $(LIBS)

#
# Compilation
#

%.o     : %.F
	@echo ""
	@echo "Compiling file " $*.F
	$(FC) -c $(FFLAGS) $*.F -o $*.o

%.o     : %.f
	@echo ""
	@echo "Compiling file " $*.f
	$(FC) -c $(FFLAGS) $*.f -o $*.o

%.o     : %.f90
	@echo ""
	@echo "Compiling file " $*.f90
	$(FC) $(FFLAGS) -o $@ -c $<

.PHONY  : clean

clean   :
	$(RM) $(SRC_DIR)/*~ $(SRC_DIR)/*.o *.mod *~ 

#
# Utilities
#

MV     = mv
RM     = \rm -f
CP     = \cp -f
RMDIR  = \rm -rf
MKDIR  = \mkdir -p
