#include <mbed.h>

extern "C" uint32_t fibonacci(uint32_t n);
extern "C" uint32_t factorial(uint32_t n);
extern "C" void bubble_sort(uint32_t *arr, uint32_t size);
extern "C" void insertion_sort(uint32_t *arr, uint32_t size);

#define N 9

int main()
{
    uint32_t array[N] = {9, 2, 5, 3, 8, 4, 1, 6, 7};
    while (1)
    {
        insertion_sort(array, N);
        for (int i = 0; i < N; i++)
        {
            printf("%ld ,", array[i]);
        }
        printf("\n");
    }
}