// Processing Element (PE) is a MAC -> it multiply / accumulates
// to obtain y, and passes input data to the output, i.e. passes
// input x to output x.
//
// yout <- yin + w * xin
// xout <- xin

module proc_elem(clk, x_in, y_in, x_out, y_out, weight);

    input clk;
    input x_in;
    input y_in;
    output x_out;
    output y_out;

    assign reg_x_in = x_in;
    assign reg_y_in = y_in;
    assign reg_weight = weight;

    assign x_out = reg_x_out;
    assign y_out = reg_y_out;
  
    always @ (posedge clk)
    begin
        reg_y_out = reg_y_in * reg_weight * reg_x_in; // MAC operation - yout <- yin + w * xin
        reg_x_out = reg_x_in; // xout <- xin
    end

endmodule

