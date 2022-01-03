#include <stdio.h>
#include <stdbool.h>
#include <time.h>

int main() {
void nhap(int *arr, int *n) {
	*n = 0;
	while(*n <= 0) {
		printf("Nhap n > 0: ");
		scanf("%d", n);
	}
	int i;
	for(i = 0; i < *n; i++) {
		printf("arr[%d] = ", i);
		scanf("%d", &arr[i]);
	}
}

bool ktra(int* arr, int n) {
	int i;
	for(i = 0; i <= n/2; i++) {
		if(arr[i] != arr[n - 1 - i]) {
			return false;
		}
	}
	return true;
}

clock_t begin = clock();
	int n;
	int arr[100];
	nhap(arr, &n);

	if(ktra(arr, n)) {
		printf("Mang doi xung.\n");
	} else {
		printf("Mang KHONG doi xung.\n");
	}
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f", time_spent);
	return 0;
}

