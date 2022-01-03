#include <stdio.h>
#include <stdbool.h>
#include <time.h>

int n = 48915791;

bool ktra(int n) {
	int a, b;
	a = n % 10;
	n /= 10;
	while(n > 0) {
		b = n % 10;
		n /= 10;
		if(b >= a) {
			return false;
		}
		a = b;
	}
	return true;
}

int firstDigit(int n) {
	int digit = 0;
	while(n > 0) {
		digit = n % 10;
		n /= 10;
	}
	return digit;
}

int countFirstDigit(int n) {
	int first = firstDigit(n);
	int count = 0;
	int aDigit;
	while(n > 0) {
		aDigit = n % 10;
		n /= 10;
		if(aDigit == first) {
			count++;
		}
	}
	return count;
}

int main() {
	clock_t begin = clock();
	
	printf("Chu so dau tien cua n: %d\n", firstDigit(n));
	
	printf("So lan xuat hien cua chu so dau tien cua n: %d\n", countFirstDigit(n));
	clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("chuong trinh chay mat %lf", time_spent);
	return 0;
}

