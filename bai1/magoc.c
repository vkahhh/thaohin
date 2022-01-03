/**
 * Tinh giai thua KHONG dung phuong phap de quy
 *  
 * @author viettuts.vn
 */
 
#include<stdio.h>
#include <time.h>
/**
 * tinh giai thua
 * 
 * @author viettuts.vn
 * @param n: so nguyen duong
 * @return giai thua cua so n
 */
long tinhGiaithua(int n) {
    if (n > 0) {
        return n * tinhGiaithua(n - 1);
    } else {
        return 1;
    }
}
 
/**
 * Ham main
 */
int main() {
clock_t begin = clock();
    int a = 10;
    int b = 12;
    int c = 15;
    printf("Giai thua cua %d  la: %d \n",  a, tinhGiaithua(a));
    printf("Giai thua cua %d  la: %d \n",  b, tinhGiaithua(b));
    printf("Giai thua cua %d  la: %d\n",  c, tinhGiaithua(c));
clock_t end = clock();
double time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
printf ("time: %f\n", time_spent);
}
