`timescale 1ns / 1ps

// Multiplier-Accumulator (MAC)
// The multiply-accumulate operation is a common step that
// computes the product of two numbers and adds that product
// to an accumulator.
// a <- a + (b x c)
module mac(clk, a, b, c);
  
  input clk;
  input a;
  input b;
  input c;
  
  always @ (posedge clk)
  begin
  
  end

endmodule

