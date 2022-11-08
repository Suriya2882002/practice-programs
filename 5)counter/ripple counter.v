module dff( input d,input clk,input rstn,output reg 4.output qn);
always@ (posedge clk or negedge rstn) if (Irstn)
q <= 0;
else
q <= d;
assign qn = ~q;
endmodule
module ripple(input clk,input rstn,output [3:0] out);
wire qo;
wire qne;
wire q1;
wireqn1;wire q2;wire wire q3; wire qn2;wire qn3;

  dff dff0(.d(qn0),
           .clk(clk),
           .rstn(rstn)
           .q(q0),
           .qn(qn0));
  dff dff1(.d(qn1),
           .clk(q0),
           .rstn(rstn)
           .q(q1),
           .qn(qn1));
  dff dff2(.d(qn2),
           .clk(q1),
           .rstn(rstn)
           .q(q2),
           .qn(qn2));
  dff dff3(.d(qn3),
           .clk(q2),
           .rstn(rstn)
           .q(q2),
           .qn(qn2));
  assign out={qn3,qn2,qn1,qn0);
  endmodule
  
  
  
