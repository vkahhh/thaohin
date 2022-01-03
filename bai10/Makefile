c:
	gcc -o magoc magoc.c
	gcc -o toiuu toiuu.c
asm:
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o magoc_arm.s 
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuo1_arm.s -O1
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuo2_arm.s -O2
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuo3_arm.s -O3
allarm:
	arm-linux-gnueabihf-as magoc_arm.s -o magoc_arm.o && arm-linux-gnueabihf-gcc -o magoc_arm magoc_arm.o 
	arm-linux-gnueabihf-as toiuuo1_arm.s -o toiuuo1_arm.o && arm-linux-gnueabihf-gcc -o toiuuo1_arm toiuuo1_arm.o 
	arm-linux-gnueabihf-as toiuuo2_arm.s -o toiuuo2_arm.o && arm-linux-gnueabihf-gcc -o toiuuo2_arm toiuuo2_arm.o 
	arm-linux-gnueabihf-as toiuuo3_arm.s -o toiuuo3_arm.o && arm-linux-gnueabihf-gcc -o toiuuo3_arm toiuuo3_arm.o 

x86:
	gcc -Wall -S magoc.c -o magoc_X86.s 
	gcc -Wall -S magoc.c -o toiuuo1_X86.s -O1
	gcc -Wall -S magoc.c -o toiuuo2_X86.s -O2
	gcc -Wall -S magoc.c -o toiuuo3_X86.s -O3
all86:
	gcc -mx32 -c magoc_X86.s -o magoc_X86.o  && gcc -mx32 -o magoc_X86 magoc_X86.o 
	gcc -mx32 -c toiuuo1_X86.s -o toiuuo1_X86.o  && gcc -mx32 -o toiuuo1_X86 toiuuo1_X86.o 
	gcc -mx32 -c toiuuo2_X86.s -o toiuuo2_X86.o  && gcc -mx32 -o toiuuo2_X86 toiuuo2_X86.o 
	gcc -mx32 -c toiuuo3_X86.s -o toiuuo3_X86.o  && gcc -mx32 -o toiuuo3_X86 toiuuo3_X86.o 


