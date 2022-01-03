#include <stdio.h>
#include <math.h>
#include <stdbool.h>
#include <time.h>
bool ktraNgto(int);
bool csNgto(int);
bool tongCsNgto(int);

int main() {
clock_t begin = clock();
	int i;
	for(i = 20000000; i <= 77777777; i++) {
		if(ktraNgto(i) && tongCsNgto(i)) {
			printf("%10d", i);
		}
	}
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f", time_spent);
	return 0;
}

bool tongCsNgto(int n) {
	int sum = 0;
	while(n > 0) {
		sum += n % 10;
		n /= 10;
	}
	if(ktraNgto(sum)) {
		return true;
	}
	return false;
}

bool csNgto(int n) {
	int c;
	while(n > 0) {
		c = n % 10;
		n /= 10;
		if(!ktraNgto(c)) {
			return false;
		}
	}
	return true;
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
