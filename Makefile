TARGET = record
OBJS = main.o

# Define to build this as a prx (instead of a static elf)
BUILD_PRX=1
# Define the name of our custom exports (minus the .exp extension)
PRX_EXPORTS=exports.exp

USE_KERNEL_LIBC=1
USE_KERNEL_LIBS=1

INCDIR = 
CFLAGS = -O2 -G0 -Wall
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LIBS = -lpspaudio -lpspumd

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build_prx.mak