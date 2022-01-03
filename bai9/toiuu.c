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

