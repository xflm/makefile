###############################################################################
# Version: v2.0.0
# Author:  xflm
# Date:    Sat Dec 19 09:11:46 CST 2020
###############################################################################

# Define toolchain path
TOOLCHAIN = arm-none-eabi-

# Define target name
TARGET = stm32f072

# Define target type: elf exe lib
TARGET_TYPE = elf
#TARGET_TYPE = exe
#TARGET_TYPE = lib

# Define run type: rom ram
#RUN_TYPE = rom
RUN_TYPE = ram

# Define build type: (null) debug profile release
#BUILD_TYPE =
#BUILD_TYPE = debug
BUILD_TYPE = profile
#BUILD_TYPE = release

# Define link file
LINK_FILE = arch/$(RUN_TYPE).lds

# Append global macro
DEFINES =

# Append cpu infomation
CPU  = -mcpu=cortex-m0
CPU += -mfloat-abi=softfp
CPU += -mthumb
CPU +=

# Append standard library
STDLIB = 

# Append GCC flags
CFLAGS =

# Append LD flags
LDFLAGS = 

# Use vpath mode: y is enable, default is disable
VPATH_MODE =

# Use grabage collection mode, y is enable, default is disable
GARBAGE_COLLECTION = y

# Create files, y is create, default is not create
CREATE_DIS =
CREATE_ASM = y
CREATE_BIN = y
CREATE_HEX =
CREATE_MAP = y
CREATE_GC  =

# Define shell cmd, run before and after compile
# like: CMD_BEFORE = echo -n ===; echo ===
CMD_BEFORE =
CMD_AFTER =

include tools/make/make.mk
