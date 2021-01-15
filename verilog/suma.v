`timescale 1ns / 1ps

// Sumador con signo que forma parte de la MAC
module suma(a,b,s);
	parameter n = 32;
	input signed [n-1:0] a, b;
	output reg signed [n-1:0] s;
	
	always @ (*)
		begin 
			s = a + b;
		end

endmodule

