import sys
import numpy as np
from scipy import signal
from scipy import linalg

# input x signal
x = [[1, 0, 0, 0], [0, -1, 0, 0], [0, 0, 3, 0], [0, 0, 0, 1]]
x = np.array(x)

print('input x: ')
print(x)

# kernel h signal
h = [[4, 5], [3, 4]]
h = np.array(h)

print('kernel h: ')
print(h)

# scipy 2d convolution method
print('conv (scipy): ')
print(signal.convolve2d(x, h), 'full')

# scipy fft convolution method
print('fft convolution (scipy) : ')
print(np.array(signal.fftconvolve(x, h), np.int32))

# My method

# size of the output signal
s1 = np.array(x.shape)
s2 = np.array(h.shape)
size = s1 + s2 - 1

fsize = 2 ** np.ceil(np.log2(size)).astype(int)
fslice = tuple([slice(0, int(sz)) for sz in size])

# input and kernel in frequency domain (with fft)
new_x = np.fft.fft2(x, fsize)
new_h = np.fft.fft2(h, fsize)

# inverse fft of the multiplication of x and h in freq domain
result = np.fft.ifft2(new_x*new_h)[fslice].copy()

print('fft-convolution for my method: ')
print(np.array(result.real, np.int32))
