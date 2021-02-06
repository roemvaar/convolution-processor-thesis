`timescale 1ns / 1ps

// 8-bit ALU
module alu(clk, in_a, in_b, in_op, out_data);

    // Inputs, outputs and internal variables declared here
	input clk;
	input [7:0] in_a;
	input [7:0] in_b;
    	input [2:0] in_op;
	output [7:0] data_out;
    	wire [7:0] reg1;
    	wire [7:0] reg2;
    	reg [7:0] reg3;

    // Assign in_a and in_b to internal variables for doing operations
    assign reg1 = in_a;
    assign reg2 = in_b;

    // Assign the output
    assign out_data = reg3;

	// Always block with inputs and sensitivity list
	always @ (posedge clk)
	begin
        case(in_op)
            0 : reg3 = reg1 + reg2;     // addition
            1 : reg3 = reg1 - reg2;     // subtraction
            2 : reg3 = ~reg1;           // NOT gate
            3 : reg3 = ~(reg1 & reg2);  // NAND gate
            4 : reg3 = ~(reg1 | reg2);  // NOR gate
            5 : reg3 = reg1 & reg2;     // AND gate
            6 : reg3 = reg1 | reg2;     // OR gate
            7 : reg3 = reg1 ^ reg2;     // XOR gate
            default : reg4 = 0;
        endcase	
	end

endmodule

