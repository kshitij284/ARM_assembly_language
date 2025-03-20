#include <mbed.h>

extern "C" uint32_t fibonacci(uint32_t n);
extern "C" uint32_t factorial(uint32_t n);

#define N 11

int main()
{
    uint32_t n = 9;

    while (1)
    {
        printf("The input to the function is %ld \n", n);

        //  Result can only be stored till 11! (using uint32_t for result.
        if (n > N)
        {
            printf("The argument is too charge.)");
        }
        else
        {
            uint32_t result = factorial(n);
            printf("factorial(%ld) = %ld \n", n, result);
        }
    }
}