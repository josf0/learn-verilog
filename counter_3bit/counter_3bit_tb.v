module counter_3bit_tb;
  reg clk, rst;
  wire [2:0] count;

  counter_3bit c0 (.clk(clk), .rst(rst), .count(count));
  
  initial begin
    $dumpfile("counter_3bit.vcd");
    $dumpvars(0, clk, rst, count);
  end 

  initial begin 
    clk <= 1'b0; rst <= 1'b0;

    #5 rst=~rst;
    #5 rst=~rst;

    #30 $finish;
  end

  initial begin
    forever #5 clk=~clk;
  end

endmodule
