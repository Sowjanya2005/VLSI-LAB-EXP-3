module ha(a,b,sum,carry);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule
module mul_2(a,b,c);
input [1:0]a,b;
output [3:0]c;
wire w1,w2,w3;
and g1(c[0],a[0],b[0]);
and g2(w1,a[0],b[1]);
and g3(w2,a[1],b[0]);
and g4(w3,a[1],b[1]);
ha ha1(w1,w2,c[1],w4);
ha ha2(w4,w3,c[2],c[3]);
endmodule
