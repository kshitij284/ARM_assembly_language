#include <mbed.h>

extern "C" uint32_t fibonacci(uint32_t n);
extern "C" uint32_t factorial(uint32_t n);

int main()
{
    uint32_t n = 39;
    while (1)
    {
        printf("The input to the function is %ld \n", n);

        uint32_t result = factorial(n);

        printf("factorial(%ld) = %ld \n", n, result);
    }
}