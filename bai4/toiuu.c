#include <stdio.h>
#include <time.h>

int n = 100000;

int demChuSo(int n) {
	int count = 0;
	while(n > 0) {
		count++;
		n /= 10;
	}
	return count;
}

int demChuSoLe(int n) {
	int count = 0;
	int c;
	while(n > 0) {
		c = n % 10;
		if(c % 2 != 0) {
			count++;	
		}
		n /= 10;
	}
	return count;
}

float tbc(int n) {
	float tb = 0;
	int sl = demChuSo(n);
	int sum = 0;
	while(n > 0) {
		sum += n % 10;
		n /= 10;
	}
	tb = (float)sum / sl;
	return tb;
}

int main() {
clock_t begin = clock();
	printf("So chu so cua n: %d\n", demChuSo(n));
	printf("So chu so le cua n: %d\n", demChuSoLe(n));
	printf("TBC cac chu so cua n: %0.2f", tbc(n));
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f", time_spent);
	return 0;
}

