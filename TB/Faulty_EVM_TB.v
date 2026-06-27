`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:38:33
// Design Name: 
// Module Name: Faulty_EVM_TB
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


module Faulty_EVM_TB();
    reg clk, reset;
    reg A_Push, B_Push, C_Push;
    reg ballot_signal, show_result;
    wire A_Led, B_Led, C_Led;
    wire buzzer_output;
    wire limit_exceeded;
    wire [7:0] A_Count, B_Count, C_Count;
    
    Faulty_EVM DuT(.clk(clk), .reset(reset),
            .A_Push(A_Push), .B_Push(B_Push), .C_Push(C_Push),
            .ballot_signal(ballot_signal), .show_result(show_result),
            .A_Led(A_Led), .B_Led(B_Led), .C_Led(C_Led),
            .buzzer_output(buzzer_output), .limit_exceeded(limit_exceeded),
            .A_Count(A_Count), .B_Count(B_Count), .C_Count(C_Count));
    
    integer buzzer_count = 0;
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    always @(posedge buzzer_output) buzzer_count = buzzer_count + 1;
    
    initial begin
            reset = 1'b0;
            A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
        #5  reset = 1'b1;
        #5  reset = 1'b0;
        #10 repeat(10) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b1; B_Push = 1'b0; C_Push = 1'b0; 
                #10   A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(20) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b0; B_Push = 1'b1; C_Push = 1'b0; 
                #10   A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(30) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b1; 
                #10  A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(40) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b0; B_Push = 1'b1; C_Push = 1'b0; 
                #10  A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(50) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b1; B_Push = 1'b0; C_Push = 1'b0; 
                #10  A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(60) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b0; B_Push = 1'b1; C_Push = 1'b0; 
                #10  A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
            repeat(70) begin
                    ballot_signal = 1'b1;
                #100 A_Push = 1'b1; B_Push = 1'b0; C_Push = 1'b0; 
                #10  A_Push = 1'b0; B_Push = 1'b0; C_Push = 1'b0; 
                    ballot_signal = 1'b0;
                #100;
            end
            
        #1000 show_result = 1'b1;
        #10 show_result = 1'b0;
        $display("The Number of Times the Buzzer has BEEPED: %d\n", buzzer_count);
        #2400 $finish;
    end
    
endmodule
