`timescale 1ns / 1ps

module tb_proc_elem;
    
    // Inputs
    reg x_in;
    reg y_in;
    reg weight;
  
    // Outputs
    wire x_out;
    wire y_out;
  
    // Instantiate the Unit Under Test (UUT)
    proc_elem uut (
      .clk(clk),
      .x_in(x_in),
      .y_in(y_in),
      .x_out(x_out),
      .y_out(y_out),
      .weight(weight)
    );
  
    initial
    begin
    
    // Apply inputs
    clk = 0;
    x_in = 5;
    y_in = 15;
    weight = 10;
      
    // Wait 100 ns for global reset to finish
    #100;
      
    clk = 1;
    x_in = 0;
    y_in = 14; #100;
    clk = 0;

    clk = 1;
    x_in = 16;
    y_in = 1; #100;
    clk = 0;

    clk = 1;
    x_in = 51; 
    y_in = 20; #100;
    clk = 0;

    clk = 1;
    x_in = 3; 
    y_in = 4; #100;
    clk = 0;

    clk = 1;
    x_in = 4; 
    y_in = 4; #100;
    clk = 0;
 
    end   

endmodule

