// Convolution - One-Dimension and Two-Dimension


#include <stdio.h>

#define SIZE_OF_ARRAY


void convolution(char *img_ptr, char *kernel);
void convolution_2d(char *img_ptr, char *kernel);


int main(void)
{
    printf("Convolution");
    char *img_8x8[8][8];   // 8x8 Image - Grayscale
    
    return 0;
}


void convolution(char *img_ptr, char *kernel)
{
    printf("Convolution");
}


void convolution_2d(char *img_ptr, char *kernel)
{
    printf("2D Convolution");
}


void print_array(int *array, int size)
{
    int i;

    for(i = 0; i < size; i++)
    {
        printf("%d", 
    }
}
