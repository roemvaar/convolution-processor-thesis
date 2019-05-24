`timescale 1ns / 1ps

// Registro de 16 bits con habilitador
module registro_16(clk, en, ent, sal);
	parameter n = 16;
	input clk, en;
	input [n-1:0] ent;
	output reg [n-1:0] sal; 
			
	always @ (posedge clk or posedge en)
		begin 
			if (en == 1)
				sal <= ent;	
		end

endmodule
