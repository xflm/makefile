###############################################################################
# Verison: v2.1.0
# Author:  xflm
# Date:    Sun Mar 14 23:18:44 CST 2021
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
 
# Define other file
OTHER_FILE += .gdbinit
OTHER_FILE += 
 
# Define spare file
SPARE_FILE += 
 
# Include sub file.mk
FILE_PWD = drivers
include $(FILE_PWD)/file.mk
FILE_PWD = apps/mboard
include $(FILE_PWD)/file.mk
 
