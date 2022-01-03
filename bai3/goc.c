#include<stdio.h>
#include <time.h>
 
/**
 * Tim uoc so chung lon nhat (USCLN)
 */
int USCLN(int a, int b) {
    if (b == 0) return a;
    return USCLN(b, a % b);
}
 
/**
 * Tim boi so chung nho nhat (BSCNN)
 */
int BSCNN(int a, int b) {
    return (a * b) / USCLN(a, b);
}
 
/**
 * Ham main
 */
int main() {
 int a, b;
    printf("Nhap so nguyen duong a = ");
    scanf("%d", &a);
    printf("Nhap so nguyen duong b = ");
    scanf("%d", &b);
clock_t begin = clock();
    // tinh USCLN cua a và b
    printf("USCLN cua %d va %d la: %d", a, b, USCLN(a, b));
    // tinh BSCNN cua a và b
    printf("USCLN cua %d va %d la: %d", a, b, BSCNN(a, b));
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("chuong trinh chay mat %lf", time_spent);
}
