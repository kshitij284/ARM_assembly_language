#include <mbed.h>

extern "C" uint32_t fibonacci(uint32_t n);

int main()
{
    uint32_t n = 10;
    while (1)
    {
        printf("The input to the function is %ld \n", n);

        // Sanity check, passing 10 to the function to check if the assembly function receive the input currectly

        uint32_t result = fibonacci(n);

        if (result == 1)
        {
            printf("Works \n");
        }
        else
        {
            printf("Failed \n");
        }
    }
}