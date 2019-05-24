`timescale 1ns / 1ps

// Registro de 32 bits con habilitador y reset
module reg_int(clk, en, reset, ent, sal);
	parameter n = 32;
	input clk, en, reset;
	input [n-1:0] ent;
	output reg [n-1:0] sal;
	
	always @ (posedge clk or posedge en or posedge reset)
		begin 
			if (reset == 0 && en == 1)
				sal <= ent;
			else if (reset == 1)
				sal <= 0;
		end
		
endmodule
