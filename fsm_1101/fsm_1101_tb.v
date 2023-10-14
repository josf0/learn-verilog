module fsm_1101_tb ();
reg clk, rstn, cin;
wire reg cout;
integer i;

fsm_1101 dut (clk, rstn, cin, cout);

initial begin
  $dumpfile("fsm_1101.vcd");
  $dumpvars(0, fsm_1101_tb);
end

initial begin
  forever begin
    #5 clk = ~clk;
  end
end

reg [15:0] data_values = 16'b0011011011010110;

initial begin
  clk = 0; rstn = 0; cin = 0;
  #10 rstn <= 1; 
  #5;
  for (i = 0; i < 15; i++) begin
    #5 cin <= data_values[i];
  end

  #50 $finish;
end

endmodule
