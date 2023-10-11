module d_ff (
 input rstn, clk, d,
 output reg q
);

  always @ (posedge clk or negedge clk) begin
    if(!rstn)
      q <= 0;
    else
      q <= d;
  end
endmodule
