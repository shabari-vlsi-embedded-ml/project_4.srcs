`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2026 11:50:54
// Design Name: 
// Module Name: tb_ripple_carry_adder_4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_ripple_carry_adder_4bit;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;

    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder_4bit DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $monitor(
            "Time = %0t | A = %b | B = %b | Cin = %b | Sum = %b | Cout = %b",
            $time, A, B, Cin, Sum, Cout
        );

        // Test case 1: 0 + 0 + 0
        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;
        #10;

        // Test case 2: 3 + 5 + 0 = 8
        A = 4'b0011;
        B = 4'b0101;
        Cin = 1'b0;
        #10;

        // Test case 3: 11 + 6 + 0 = 17
        A = 4'b1011;
        B = 4'b0110;
        Cin = 1'b0;
        #10;

        // Test case 4: 15 + 1 + 0 = 16
        A = 4'b1111;
        B = 4'b0001;
        Cin = 1'b0;
        #10;

        // Test case 5: 10 + 5 + 1 = 16
        A = 4'b1010;
        B = 4'b0101;
        Cin = 1'b1;
        #10;

        $finish;

    end

endmodule
