// Convolution - One-Dimension and Two-Dimension

#include <stdlib.h>
#include <stdio.h>

#define SIZE(A) (sizeof(A)/sizeof(A[0]))


void conv_1d(int *h, int *x, int len_h, int len_x, int *y);
void conv_2d(char *img_ptr, char *kernel);
void print_array(int *array, int size);


int main(void)
{
    printf("Convolution\n");

    int x[20] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19};
    int h[5] = {100, 99, 98, 97, 96};
    int y[24] = {0};    // Important to initialize, since y is used as an accumulator


    conv_1d(h, x, SIZE(h), SIZE(x), y);
   
    printf("y[n] = x[n] * h[n]:\n");
    print_array(y, SIZE(y));

    return 0;
}



void conv_1d(int *h, int *x, int len_h, int len_x, int *y)
{ 
    // 1D Convolution operation - Input Side Algorithm
    // x[n] is convolved with h[n] to produce y[n]
    // This algorithm is based on the fundamental concept of DSP:
    // decompose the input, pass the components through the system,
    // and synthesize the output.

    printf("1D Convolution - Input Side Algorithm\n");
    
    int i;
    int j;
       
    // Loops through the input signal
    for(i = 0; i < len_x; i++)
    {
        for(j = 0; j < len_h; j++)
        {
            y[i + j] = y[i + j] + x[i] * h [j];     // MAC - Multiplier accumulator in verilog
        }
    }  

}


void conv_2d(int **h, int **x, int **y)
{
    printf("2D Convolution\n");
}


void print_array(int *array, int size)
{
    int i;

    for(i = 0; i < size; i++)
    {
        printf("%d ", array[i]);
    }

    printf("\n");
}

