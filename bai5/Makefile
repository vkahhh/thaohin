c:
	gcc -o magoc magoc.c
	gcc -o toiuu_Ofast magoc.c
asm:
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o magoc_arm.s 
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuOfast_arm.s -Ofast
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuOg_arm.s -Og
	arm-linux-gnueabihf-gcc -Wall -S magoc.c -o toiuuOs_arm.s -Os
allarm:
	arm-linux-gnueabihf-as magoc_arm.s -o magoc_arm.o && arm-linux-gnueabihf-gcc -o magoc_arm magoc_arm.o 
	arm-linux-gnueabihf-as toiuuOfast_arm.s -o toiuuOfast_arm.o && arm-linux-gnueabihf-gcc -o toiuuOfast_arm toiuuOfast_arm.o 
	arm-linux-gnueabihf-as toiuuOg_arm.s -o toiuuOg_arm.o && arm-linux-gnueabihf-gcc -o toiuuOg_arm toiuuOg_arm.o 
	arm-linux-gnueabihf-as toiuuOs_arm.s -o toiuuOs_arm.o && arm-linux-gnueabihf-gcc -o toiuuOs_arm toiuuOs_arm.o 

x86:
	gcc -Wall -S magoc.c -o magoc_X86.s 
	gcc -Wall -S magoc.c -o toiuuOfast_X86.s -Ofast
	gcc -Wall -S magoc.c -o toiuuOg_X86.s -Og
	gcc -Wall -S magoc.c -o toiuuOs_X86.s -Os
all86:
	gcc -mx32 -c magoc_X86.s -o magoc_X86.o  && gcc -mx32 -o magoc_X86 magoc_X86.o 
	gcc -mx32 -c toiuuOfast_X86.s -o toiuuOfast_X86.o  && gcc -mx32 -o toiuuOfast_X86 toiuuOfast_X86.o 
	gcc -mx32 -c toiuuOg_X86.s -o toiuuOg_X86.o  && gcc -mx32 -o toiuuOg_X86 toiuuOg_X86.o 
	gcc -mx32 -c toiuuOs_X86.s -o toiuuOs_X86.o  && gcc -mx32 -o toiuuOs_X86 toiuuOs_X86.o 


