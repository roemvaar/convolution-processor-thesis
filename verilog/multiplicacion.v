`timescale 1ns / 1ps

// Multiplicador con signo
module multiplicacion(a, b, sal);
	parameter n = 16;
	input signed [n-1:0] a, b;
	output reg signed [n-1:0] sal;
	
	always @ (*)
		begin 
			sal = a * b;
		end
		
endmodule

