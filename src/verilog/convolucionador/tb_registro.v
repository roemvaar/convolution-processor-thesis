`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:28:54 05/23/2019
// Design Name:   registro
// Module Name:   /home/ise/ise_projects/convolucionador/tb_registro.v
// Project Name:  convolucionador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registro
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_registro;

	// Inputs
	reg en;
	reg clk;
	reg [31:0] ent;

	// Outputs
	wire [31:0] sal;

	// Instantiate the Unit Under Test (UUT)
	registro uut (
		.en(en), 
		.clk(clk), 
		.ent(ent), 
		.sal(sal)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		clk = 0;
		ent = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Add stimulus here
		ent = 'h12;
		clk = 1;
		en = 1;
		
		#100;
		clk = 0;
		
		#100;        
		ent = 'hff;
		clk = 1;
		en = 1;
		
		#100;
		clk = 0;
		en = 0;
		
		#100;
		clk = 1;
		ent = 'h51;
		
		#100;
		clk = 0;
		ent = 'h30;
		
		#100;
		clk = 1;
		
		#100;
		clk = 0;
		en = 1;
		ent = 'h08;
		
		#100;
		clk = 1;
		
		#100;
		clk = 0;

	end
      
endmodule

