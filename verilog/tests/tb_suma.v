`timescale 1ns / 1ps

module tb_suma;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] s;

	// Instantiate the Unit Under Test (UUT)
	suma uut (
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a = 1;
		b = -5;
		
		#100
		a = 2;
		
		#100
		a = 515;
		b = -12;
		
		#20
		b = 10;
		a = 214;
		
		#20
		b = 13;
		a = -124;
		
		#100 
		a = 3;

	end
      
endmodule

