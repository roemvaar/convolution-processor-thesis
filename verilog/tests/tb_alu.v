module tb_alu;

    // Inputs
    reg[7:0] in_a;
    reg[7:0] in_b;
    reg[2:0] in_op;

    // Outputs
    wire[7:0] out_data;

    // Instantiate the Unit Under Test (UUT)
    ALU uut (
        .clk(clk),
        .in_a(in_a),
        .in_b(in_b),
        .in_op(in_op),
        .out_r(out_r)
    );

    initial begin
    // Apply inputs
    clk = 0;
    in_a = 8'b01111001;
    in_b = 8'b01100101;

    // Wait 100 ns for global reset to finish
    #100;

    clk = 1;
    in_op = 0; #100;
    clk = 0;

    clk = 1;
    in_op = 1; #100;
    clk = 0;

    clk = 1;
    in_op = 2; #100;
    clk = 0;

    clk = 1;
    in_op = 3; #100;
    clk = 0;

    clk = 1;
    in_op = 4; #100;
    clk = 0;

    clk = 1;
    in_op = 5; #100;
    clk = 0;
    
    clk = 1;
    in_op = 6; #100;
    clk = 0;

    clk = 1;
    in_op = 7; #100;
    clk = 0;
    end

endmodule 

