module counter_3bit (
  input clk, rst,
  output reg [2:0] count
);

  always @ (posedge clk or negedge clk) begin
    if(rst)
      count <= 3'h0;
    else
      count <= count + 3'h1;
  end   

endmodule
