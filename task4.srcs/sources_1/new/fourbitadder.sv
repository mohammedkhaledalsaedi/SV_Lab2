`timescale 1ns / 1ps

module fourbitadder(
    input logic a0,b0,a1,b1,a2,b2,a3,b3,cin,
    output logic s0,s1,s2,s3,cout

    );
    
    logic c0,c1,c2;
    
    full_adder f1(.s2(s0),.cout(c0),.a(a0),.b(b0),.cin(cin));
    full_adder f2(.s2(s1),.cout(c1),.a(a1),.b(b1),.cin(c0));
    full_adder f3(.s2(s2),.cout(c2),.a(a2),.b(b2),.cin(c1));
    full_adder f4(.s2(s3),.cout(cout),.a(a3),.b(b3),.cin(c2));
    
    
endmodule
