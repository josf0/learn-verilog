module testbench;

  reg a, b, cin;
  wire sum, cout;
  fulladder FA (.sum(sum), .cout(cout), .a(a), .b(b), .cin(cin));

  initial 
    begin 
      $dumpfile("fulladder.vcd");
      $dumpvars(0, a, b, cin, sum, cout);
      
      $monitor ($time, "a=%b, b=%b, c=%b, sum=%b, cout=%b", a, b, cin, sum, cout);
      
      #5 a=0; b=0; cin=1;
      #5 b=1;
      #5 a=1;
      #5 a=0; b=0; cin=0;
      #5 $finish;
    end 
    
endmodule
