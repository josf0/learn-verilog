module fsm_1101 (
 input clk, rstn, cin,
 output cout
);

wire da, db, qa, qb;

d_ff DA (.rstn(rstn), .clk(clk), .din(da), .q(qa) );
d_ff DB (.rstn(rstn), .clk(clk), .din(db), .q(qb) );

assign da = (qa & ~qb & ~cin) | (~qa & qb & cin);
assign db = (qa & ~qb) | (qa & cin) | (~qb & cin);
assign cout = qa & qb & cin;

endmodule

module d_ff (
 input rstn, clk, din,
 output reg q
);
  always @ (posedge clk or negedge clk) begin
    if(~rstn)
      q <= 0;
    else
      q <= din;
  end
endmodule
