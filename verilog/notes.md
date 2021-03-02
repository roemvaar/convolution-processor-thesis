# Verilog notes

ALU - https://verilogcodes.blogspot.com/2015/10/verilog-code-for-simple-alu.html

Control Unit:

- It needs to be a finite state machine
- https://blog.digilentinc.com/how-to-code-a-state-machine-in-verilog/
- https://verilogguide.readthedocs.io/en/latest/verilog/fsm.html


## Email from Romero - Feb 23

[] Primero hay que definir el tamaño del arreglo sistólico, yo sugiero que sea de 32 elementos. Esto quiere decir que podrá ser capaz de realizar convoluciones de dos señales de N=15.

[] Lo primero que hay a echar andar es este bloque de arreglo sistólico con su respectiva unidad de control local, sin memorias de entrada y memorias de salida. La idea tener ese bloque jalando, encapsularlo para después integrarlo en un sistema más grande.

[] El primer caso con el que se probaría tu convolucionador seria con la convolución de dos señales (CONV en 1D).

[] El segundo caso seria probar tu bloque para hacer la conv de la info de una imagen (CONV en 2D). Para esto se los datos de la imagen se ponen en forma matricial y se saca la conv de la secuencia ordenada por filas y se multiplica por la conv. De la secuencia ordenada por columnas
