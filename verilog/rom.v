`timescale 1ns / 1ps

// Memoria ROM con 64 localidades de memoria, 
// el convolucionador procesa 50 datos como máximo
module rom(clk, address, mem);
	parameter n = 16;		// 16 bits cada palabra	
	parameter m = 64;		// 64 palabras
	parameter add = 6;
	input clk;
	input [add-1: 0] address;
	output reg [n-1: 0] mem [m-1:0];
	
	always @ (*)
		begin 
			mem[0]  <= 'hfff1;
			mem[1]  <= 'hffd1;
			mem[2]  <= 'hffb4;
			mem[3]  <= 'hff9f;
			mem[4]  <= 'hff96;
			mem[5]  <= 'hff9c;
			mem[6]  <= 'hffb6;
			mem[7]  <= 'hffe3;
			mem[8]  <= 'h0021;
			mem[9]  <= 'h006e;
			mem[10] <= 'h00c3;
			mem[11] <= 'h011a;
			mem[12] <= 'h016c;
			mem[13] <= 'h01b1;
			mem[14] <= 'h01e3;
			mem[15] <= 'h01fd;
			mem[16] <= 'h01fd;
			mem[17] <= 'h01e3;
			mem[18] <= 'h01b1;
			mem[19] <= 'h016c;
			mem[20] <= 'h011a;
			mem[21] <= 'h00c3;
			mem[22] <= 'h006e;
			mem[23] <= 'h0021;
			mem[24] <= 'hffe3;
			mem[25] <= 'hffb6;
			mem[26] <= 'hff9c;
			mem[27] <= 'hff96;
			mem[28] <= 'hff9f;
			mem[29] <= 'hffb4;
			mem[30] <= 'hffd1;
			mem[31] <= 'hfff1;
			mem[32] <= 'h0000;
			mem[33] <= 'h0000;
			mem[34] <= 'h0000;
			mem[35] <= 'h0000;
			mem[36] <= 'h0000;
			mem[37] <= 'h0000;
			mem[38] <= 'h0000;
			mem[39] <= 'h0000;
			mem[40] <= 'h0000;
			mem[41] <= 'h0000;
			mem[42] <= 'h0000;
			mem[43] <= 'h0000;
			mem[44] <= 'h0000;
			mem[45] <= 'h0000;
			mem[46] <= 'h0000;
			mem[47] <= 'h0000;
			mem[48] <= 'h0000;
			mem[49] <= 'h0000;
		end
	
endmodule
