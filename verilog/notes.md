# Verilog notes

ALU - https://verilogcodes.blogspot.com/2015/10/verilog-code-for-simple-alu.html

Control Unit:

- It needs to be a finite state machine
- https://blog.digilentinc.com/how-to-code-a-state-machine-in-verilog/
- https://verilogguide.readthedocs.io/en/latest/verilog/fsm.html


## Email from Romero - Feb 23

[] Primero hay que definir el tamaño del arreglo sistólico, yo sugiero que sea de 32 elementos. Esto quiere decir que podrá ser capaz de realizar convoluciones de dos señales de N=15.

Considerando que Output Lenght = Input Length + Kernel Length - 1.

Para la convolución 1D el tamaño va a ser de 31 elementos, para poder utilizar dos 
señales de N=16 (se me hacen más común una señal de 16 bits que de 15, o ¿usted tiene
algún motivo en específico para que las señales sean de N=15?

Para la convolución de 2D, me gustaría poder convolucionar una señal/imagen de 8x8
con un kernel/filtro de 3x3, para esto, el tamaño de la señal de salida debería de
ser también de 8x8 utilizando el método de zero padding como se muestra en
http://www.songho.ca/dsp/convolution/convolution2d_example.html. 
Por lo tanto, el tamaño del arreglo sistólico va a ser de 64 elementos (imagen de salida
8x8).

[] Lo primero que hay a echar andar es este bloque de arreglo sistólico con su respectiva unidad de control local, sin memorias de entrada y memorias de salida. La idea tener ese bloque jalando, encapsularlo para después integrarlo en un sistema más grande.

En [la carpeta de pruebas]() puede ver como le hice test individual a los modulos de la
unidad de control, al processing element y al arreglo sistólico. 

El proyecto de Vivado está muy pesado para subirlo a GitHub pero le comparto el .zip
para que pueda descargarlo y probarlo usted en sus tools de Xilinx.

[] El primer caso con el que se probaría tu convolucionador seria con la convolución de dos señales (CONV en 1D).

[] El segundo caso seria probar tu bloque para hacer la conv de la info de una imagen (CONV en 2D). Para esto se los datos de la imagen se ponen en forma matricial y se saca la conv de la secuencia ordenada por filas y se multiplica por la conv. de la secuencia ordenada por columnas
