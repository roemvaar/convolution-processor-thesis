// Convolution - One-Dimension and Two-Dimension

#include <stdlib.h>
#include <stdio.h>

#define SIZE(A) (sizeof(A)/sizeof(A[0]))


void convolution(int *h, int *x, int len_h, int len_x, int *h);
void convolution_2d(char *img_ptr, char *kernel);
void print_array(int *array, int size);


int main(void)
{
    printf("Convolution\n");

    int x[20] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
    int h[5] = {100, 99, 98, 97, 96};
    int len_y = SIZE(h) + SIZE(x) - 1;
    int y[len_y] = 0;

    convolution(h, x, SIZE(h), SIZE(x), y);
    
    printf("y[n] = x[n] * h[n]");
    print_array(y, len_y);

    return 0;
}



void convolution(int *h, int *x, int len_h, int len_x, int *h)
{ 
    // 1D Convolution operation - Input Side Algorithm 

    printf("1D Convolution - Input Side Algorithm\n");
    
    int i,j;
    int len_conv = len_x + len_h - 1;
    
    // Loops through the input signal
    for(i = 0; i < len_x; i++)
    {
        for(j = 0; j < len_x; i++)
        {
            y[i + j - i] = y[i + j - 1] + x[i] * h [j];     // MAC - Multiplier accumulator in verilog
        }
    }  

}


void convolution_2d(char *img_ptr, char *kernel)
{
    printf("2D Convolution\n");
}


void print_array(int *array, int size)
{
    int i;

    for(i = 0; i < size; i++)
    {
        printf("%d\n", array[i]);
    }
}

