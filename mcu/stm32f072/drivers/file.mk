###############################################################################
# Verison: v2.1.0
# Author:  xflm
# Date:    Sun Mar 14 23:18:44 CST 2021
###############################################################################
 
# Define create lib name
LIB_NAME := rtc
 
# Define asm file
FILE_ASM += 
 
# Define source file
FILE_SRC += $(FILE_PWD)/../../drivers/rtc.c
FILE_SRC += 
 
# Define header path
PATH_INC += $(FILE_PWD)/../../drivers/include
PATH_INC += 
 
# Define library file
FILE_LIB += 
 
# Define other file
FILE_OTHER += 
 
# Define spare file
SPARE_FILE += 
 
# Include lib.mk
include $(TEMPLATE)/tools/make/lib.mk
