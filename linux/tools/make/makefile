###############################################################################
# Version: v2.0.0
# Author:  xflm
# Date:    Sat Dec 19 09:11:46 CST 2020
###############################################################################

# Define toolchain path, default $(G_TOOLCHAIN)
TOOLCHAIN = $(G_TOOLCHAIN)

# Define build type:  $(G_BUILD_TYPE) (null) debug profile release
BUILD_TYPE = $(G_BUILD_TYPE)
#BUILD_TYPE =
#BUILD_TYPE = debug
#BUILD_TYPE = profile
#BUILD_TYPE = release

# Append global macro
DEFINES =

# Append core infomation, default $(G_CPU)
CPU = $(G_CPU)

# Append standard library
STDLIB =

# Append GCC flags, default $(G_INCFLAGS) $(G_DEFINEFLAGS)
CFLAGS  = $(G_INCFLAGS) $(G_DEFINEFLAGS)
CFLAGS +=

# Append LD flags
LDFLAGS =

# Use vpath mode, y is enable, default is disable
VPATH_MODE = y

# Use garbage clollection mode, y is enable, default is disable
GARBAGE_COLLECTION = y

# Define shell cmd, run before and after compile
# like: CMD_BEFORE = echo -n ===; echo ===
CMD_BEFORE =
CMD_AFTER =

TARGET = $(LIB_NAME)
TARGET_TYPE = lib
ifneq ($(VPATH_MODE),)
OBJ_DIR = $(BUILD_DIR)/$(FILE_PWD)/.obj
endif
include tools/make/make.mk
