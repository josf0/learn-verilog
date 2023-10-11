module d_ff_tb();

reg rstn, clk, d;
wire reg q;

d_ff dut (rstn, clk, d, q);

initial begin
  $dumpfile("d_ff.vcd");
  $dumpvars(0, d_ff_tb);
end

initial begin
  forever begin
    #5 clk = ~clk;
  end
end

initial begin
  clk = 0; rstn = 0; d = 0;
  #5 rstn = 1;
  #5 d = 1;
  #5 rstn = 0;
  #40 $finish;
end

endmodule
