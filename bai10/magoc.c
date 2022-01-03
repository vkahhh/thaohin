#include <stdio.h>
#include <time.h>
int n = 1000000;

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
	
	printf("So chu so cua n: %d\n", demChuSo(n));
	printf("So chu so le cua n: %d\n", demChuSoLe(n));
	printf("TBC cac chu so cua n: %0.2f", tbc(n));
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>
//gcc -o magoc magoc.c -lm
int nhapN() {
	int n = -1;
	while(n <= 0) {
		printf("Nhap so nguyen n > 0: ");
		scanf("%d", &n);
	}
	return n;
}

bool ktraNgto(int n) {
	if(n < 2) {
		return false;
	}
	int i;
	for(i = 2; i <= sqrt(n); i++) {
		if(n % i == 0) {
			return false;
		}
	}
	return true;
}

void lietKeNgto(int n) {
	printf("%d so nguyen to dau tien: \n", n);
	int i = 2;
	while(n > 0) {
		if(ktraNgto(i)) {
			printf("%d, ", i);
			n--;
		}
		i++;
	}
}

void lietKeFibo(int n) {
	printf("\n%d so Fibonacci dau tien: \n", n);
	long long f1 = 1, f0 = 0, fn;
	int i;
	for(i = 0; i < n; i++) {
		if(i <= 1) {
			fn = i;
		} else {
			fn = f1 + f0;
			f0 = f1;
			f1 = fn;
		}
		printf("F%d = %lld\n", i, fn);		
	}
}

void lietKeChinhPhuong(int n) {
	printf("\n%d so chinh phuong dau tien: \n", n);
	int i;
	for(i = 0; i < n; i++) {
		printf("%d, ", i * i);
	}
}

int main() {
	clock_t begin = clock();
	int n = nhapN();
	lietKeNgto(n);
	lietKeChinhPhuong(n);
	clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f", time_spent);
	return 0;
}

	return 0;
}

