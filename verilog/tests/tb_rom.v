`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:54:57 05/23/2019
// Design Name:   rom
// Module Name:   /home/ise/ise_projects/convolucionador/tb_rom.v
// Project Name:  convolucionador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rom
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rom;

	// Inputs
	reg clk;
	reg [5:0] address;
	reg mem;

	// Instantiate the Unit Under Test (UUT)
	rom uut (
		.clk(clk), 
		.address(address), 
		.mem(mem)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		address = 0;
		mem = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

