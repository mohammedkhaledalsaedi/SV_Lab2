`timescale 1ns / 1ps

module full_adder_tb;
    logic a0,b0,a1,b1,a2,b2,a3,b3,cin;
    logic s0,s1,s2,s3,cout;
    
    fourbitadder dut(
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .b0(b0),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .cin(cin),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .cout(cout)
    );
    
    initial begin
    // Display header
    $display("Time\t a\t b\t cin\t s\t cout\t");
    $display("------------------------");
    // Apply test vectors with $display statements
    a0 = 0; a1=0; a2=0; a3=0; b0 = 0; b1=0; b2=0; b3=0; cin = 0; #10;
    a0 = 0; a1=0; a2=0; a3=1; b0 = 0; b1=0; b2=0; b3=1; cin = 0; #10;
    a0 = 0; a1=0; a2=1; a3=0; b0 = 0; b1=0; b2=1; b3=0; cin = 0; #10;
    a0 = 0; a1=0; a2=1; a3=1; b0 = 0; b1=0; b2=1; b3=1; cin = 0; #10;
    a0 = 0; a1=1; a2=0; a3=0; b0 = 0; b1=1; b2=0; b3=0; cin = 0; #10;
    a0 = 0; a1=1; a2=0; a3=1; b0 = 0; b1=1; b2=0; b3=1; cin = 0; #10;
    a0 = 0; a1=1; a2=1; a3=0; b0 = 0; b1=1; b2=1; b3=0; cin = 0; #10;
    a0 = 0; a1=1; a2=1; a3=1; b0 = 0; b1=1; b2=1; b3=1; cin = 0; #10;
    a0 = 1; a1=0; a2=0; a3=0; b0 = 1; b1=0; b2=0; b3=0; cin = 0; #10;
    a0 = 1; a1=0; a2=0; a3=1; b0 = 1; b1=0; b2=0; b3=1; cin = 0; #10;
    a0 = 1; a1=0; a2=1; a3=0; b0 = 1; b1=0; b2=1; b3=0; cin = 0; #10;
    a0 = 1; a1=0; a2=1; a3=1; b0 = 1; b1=0; b2=1; b3=1; cin = 0; #10;
    a0 = 1; a1=1; a2=0; a3=0; b0 = 1; b1=1; b2=0; b3=0; cin = 0; #10;
    a0 = 1; a1=1; a2=0; a3=1; b0 = 1; b1=1; b2=0; b3=1; cin = 0; #10;
    a0 = 1; a1=1; a2=1; a3=0; b0 = 1; b1=1; b2=1; b3=0; cin = 0; #10;
    a0 = 1; a1=1; a2=1; a3=1; b0 = 1; b1=1; b2=1; b3=1; cin = 0; #10;

    
    $finish;
    end

endmodule
