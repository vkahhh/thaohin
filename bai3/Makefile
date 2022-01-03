asm:
	arm-linux-gnueabihf-gcc -Wall -S goc.c -o magoc1_arm.s 
	arm-linux-gnueabihf-gcc -Wall -S goc.c -o magoc2_arm.s 
	arm-linux-gnueabihf-gcc -Wall -S toiuu.c -o toiuu1_arm.s 
	arm-linux-gnueabihf-gcc -Wall -S toiuu.c -o toiuu2_arm.s 
allarm:
	arm-linux-gnueabihf-as magoc1_arm.s -o magoc1_arm.o && arm-linux-gnueabihf-gcc -o magoc1_arm magoc1_arm.o 
	arm-linux-gnueabihf-as magoc2_arm.s -o magoc2_arm.o && arm-linux-gnueabihf-gcc -o magoc2_arm magoc2_arm.o 
	arm-linux-gnueabihf-as toiuu1_arm.s -o toiuu1_arm.o && arm-linux-gnueabihf-gcc -o toiuu1_arm toiuu1_arm.o 
	arm-linux-gnueabihf-as toiuu2_arm.s -o toiuu2_arm.o && arm-linux-gnueabihf-gcc -o toiuu2_arm toiuu2_arm.o 

x86:
	gcc -Wall -S goc.c -o magoc1_X86.s 
	gcc -Wall -S goc.c -o magoc2_X86.s 
	gcc -Wall -S toiuu.c -o toiuu1_X86.s 
	gcc -Wall -S toiuu.c -o toiuu2_X86.s 
all86:
	gcc -mx32 -c magoc1_X86.s -o magoc1_X86.o  && gcc -mx32 -o magoc1_X86 magoc1_X86.o 
	gcc -mx32 -c magoc2_X86.s -o magoc2_X86.o  && gcc -mx32 -o magoc2_X86 magoc2_X86.o 
	gcc -mx32 -c toiuu1_X86.s -o toiuu1_X86.o  && gcc -mx32 -o toiuu1_X86 toiuu1_X86.o 
	gcc -mx32 -c toiuu2_X86.s -o toiuu2_X86.o  && gcc -mx32 -o toiuu2_X86 toiuu2_X86.o 

