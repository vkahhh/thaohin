#include <stdio.h>
#include <time.h> 
void main()
{
  
    float TotalKm;
    float Cost = 0;
    printf("\n Nhap vao so Km: ");
    scanf("%f", &TotalKm);
clock_t begin = clock();
    if(TotalKm <= 1)
    {
        Cost = TotalKm * 5000;
    }
    else if(TotalKm <= 30 && TotalKm > 1)
    {
        Cost = (TotalKm - 1)*4000 + 1*5000;
    }
    else
    {
        Cost = 1*5000 + 29*4000 + (TotalKm - 30)*3000;
    }
    printf("\n So tien phai tra: %0.3f VND", Cost);
   clock_t end = clock();
	double time_spent = (double)(end - begin) / CLOCKS_PER_SEC; 
	printf ("time: %f", time_spent);
}
