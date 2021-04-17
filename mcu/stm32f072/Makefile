###############################################################################
# Version: v2.1.0
# Author:  xflm
# Date:    Fri Feb 26 17:03:14 CST 2021
###############################################################################

# Define toolchain path
TOOLCHAIN = arm-none-eabi-

# Define template path
TEMPLATE = .

# Define target name
TARGET = stm32f072

# Define board name: 
BOARD = STM32F072C8T6

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
USERDEFINES = 

# Append cpu infomation
USERCPU  = -mcpu=cortex-m0
USERCPU += -mfloat-abi=softfp
USERCPU += -mthumb
USERCPU += 

# Append standard library
USERSTDLIB = 

# Append GCC flags
USERCFLAGS = 

# Append LD flags
USERLDFLAGS = 

# Use vpath mode, y is enable, default is disable
VPATH_MODE = 

# Use garbage collection mode, y is enable, default is disable
GARBAGE_COLLECTION = y

# Create files, y is create, default is not create
CREATE_DIS = 
CREATE_ASM = y
CREATE_BIN = y
CREATE_HEX = 
CREATE_MAP = 
CREATE_GC  = 

# Define shell cmd, run before and after compile
# like: CMD_BEFORE = echo -n ===; echo ===
CMD_BEFORE = 
CMD_AFTER = 

include $(TEMPLATE)/tools/make/make.mk
