###############################################################################
# Verison: v2.0.0
# Author:  xflm
# Date:    Sat Feb 20 12:29:57 CST 2021
###############################################################################
 
# Define create lib name
LIB_NAME := 
 
# Define asm file
FILE_ASM += 
 
# Define source file
FILE_SRC += $(FILE_PWD)/mboard.c
FILE_SRC += $(FILE_PWD)/rtc.c
FILE_SRC += 
 
# Define header path
PATH_INC += $(FILE_PWD)/include
PATH_INC += 
 
# Define library file
FILE_LIB += 
 
# Define library file
FILE_OTHER += 
 
# Include lib.mk
include tools/make/lib.mk
