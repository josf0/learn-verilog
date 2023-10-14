module d_ff (
 input rstn, clk, din,
 output reg q
);

  always @ (posedge clk or negedge clk) begin
    if(!rstn)
      q <= 0;
    else
      q <= din;
  end
endmodule
