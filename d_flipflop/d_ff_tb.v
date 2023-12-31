module d_ff_tb();

reg rstn, clk, din;
wire reg q;

d_ff dut (rstn, clk, din, q);

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
  clk = 0; rstn = 0; din = 0;
  #5 rstn = 1;
  #5 din = 1;
  #5 rstn = 0;
  #40 $finish;
end

endmodule
