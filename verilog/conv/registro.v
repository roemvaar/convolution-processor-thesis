`timescale 1ns / 1ps

// Registro de 32 bits para precisión completa a la salida con habilitador
module registro(clk, en, ent, sal);
	parameter n = 32;
	input clk, en;
	input [n-1:0] ent;
	output reg [n-1:0] sal;
	
	always @ (posedge clk or posedge en)
		begin 
			if (en == 1)
				sal <= ent;
		end

endmodule

