// Convolution - One-Dimension and Two-Dimension

#include <stdlib.h>
#include <stdio.h>

#define SIZE(A) (sizeof(A)/sizeof(A[0]))


float *convolution(float *h, float *x, int len_h, int len_x, int *len_y);
void convolution_2d(char *img_ptr, char *kernel);
void print_array(int *array, int size);


int main(void)
{
    printf("Convolution\n`");
    char *img_8x8[8][8];   // 8x8 Image - Grayscale
    int array[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    char *kernel = NULL;

    //convolution(img_8x8, kernel);
    //convolution_2d(img_8x8, kernel);
    print_array(array, SIZE(array));

    return 0;
}


float *convolution(float *h, float *x, int len_h, int len_x, int *len_y)
{
    float *y; 

    *len_y = len_h + len_x - 1;
    
    y = (float*)calloc(*len_y, sizeof(float));


    printf("Convolution\n");

    return(y);
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

