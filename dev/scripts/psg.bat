@echo off
REM psg		Commonly used psg	not banked

cd ..
folder2c ..\psg psg

sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 psg.c

del *.asm > nul; del *.lst > nul; del *.sym > nul

::cd ..
cd scripts