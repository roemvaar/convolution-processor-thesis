// Convolution
// 
// http://www.songho.ca/dsp/convolution/convolution.html

#include <iostream>
using namespace std;


class Convolution
{
    public:
        void conv()
        {
            cout << "Convolution 1D" << endl;
        }

        void conv2d()
        {
            cout << "Convolution 2D" << endl;
        }
};


int main(void)
{
    Convolution test_conv;

    test_conv.conv();
    test_conv.conv2d();

    return 0;
}

