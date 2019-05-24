`timescale 1ns / 1ps

// Código de la RAM de doble puerto
module ram(clk, en, RW, address, data_in, data_out);
	parameter w = 16;	// ancho de palabra
	parameter a = 7;	// ancho de dirección
	input clk, en, RW;
	input [a-1:0] address;
	input [w-1:0] data_in; 
	output [w-1:0] data_out;
	
	always @ (posedge clk)
	begin 
		if (en == 1 && RW == 1) 
			
	
	
	
	end

endmodule
