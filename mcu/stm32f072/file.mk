###############################################################################
# Verison: v2.0.0
# Author:  xflm
# Date:    Sat Feb 20 12:29:57 CST 2021
###############################################################################
 
# Define asm file
ASM_FILE += arch/crt0.S
ASM_FILE += 
 
# Define source file
SRC_FILE += main.c
SRC_FILE += 
 
# Define header path
INC_PATH += 
 
# Define library file
LIB_FILE += 
 
# Define library file
OTHER_FILE += 
 
# Include sub file.mk
FILE_PWD = drivers
include $(FILE_PWD)/file.mk
FILE_PWD = apps/mboard
include $(FILE_PWD)/file.mk
 
