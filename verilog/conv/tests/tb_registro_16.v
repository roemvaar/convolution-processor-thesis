`timescale 1ns / 1ps

module tb_registro_16;

	// Inputs
	reg en;
	reg clk;
	reg [15:0] ent;

	// Outputs
	wire [15:0] sal;

	// Instantiate the Unit Under Test (UUT)
	registro_16 uut (
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

