`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2025 00:36:35
// Design Name: 
// Module Name: Faulty_EVM
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


module Faulty_EVM(
    input clk, reset, 
    input A_Push, B_Push, C_Push,
    input ballot_signal, show_result,
    output A_Led, B_Led, C_Led,
    output reg buzzer_output,
    output reg limit_exceeded,
    output reg [7:0] A_Count, B_Count, C_Count
    );
    
    reg [7:0] A_Vote, B_Vote, C_Vote;
    reg [1:0] buzzer_count;
    reg [7:0] vote_count;
    reg voted;
    
    reg [1:0] state;
    parameter READY =  2'd0, VOTE = 2'd1, BUZZ = 2'd2, FINISH = 2'd3;
    
    assign A_Led = A_Push;
    assign B_Led = B_Push;
    assign C_Led = C_Push;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            A_Count = 8'b0;
            B_Count = 8'b0;
            C_Count = 8'b0;
            buzzer_output = 1'b0;
            A_Vote = 8'b0;
            B_Vote = 8'b0;
            C_Vote = 8'b0;
            buzzer_count = 1'b0;
            vote_count = 8'b0;
            limit_exceeded = 1'b0;
            voted = 1'b0;
            state = READY;
        end
        else begin
            case(state)
                READY:  if (ballot_signal && !voted) state = VOTE;
                        else state = READY;
                        
                VOTE:   if (vote_count <= 250) begin
                            if (vote_count <= 50) begin
                                case({A_Push, B_Push, C_Push})
                                    3'b100: begin
                                                A_Vote = A_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end
                                            
                                    3'b010: begin
                                                B_Vote = B_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end
                                            
                                    3'b001: begin
                                                C_Vote = C_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end 
                                            
                                    default: vote_count = vote_count + 1'b0;     
                                endcase
                            end
                            else begin
                                case({A_Push, B_Push, C_Push})
                                    3'b100: begin
                                                C_Vote = C_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end
                                            
                                    3'b010: begin
                                                C_Vote = C_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end
                                            
                                    3'b001: begin
                                                C_Vote = C_Vote + 1'b1;
                                                vote_count = vote_count + 1'b1;
                                                voted = 1'b1;
                                                state = BUZZ;
                                            end 
                                            
                                    default: vote_count = vote_count + 1'b0;     
                                endcase
                            end
                        end
                        else limit_exceeded = 1'b1;
                        
                BUZZ:   if (buzzer_count != 2'd3) begin
                            buzzer_output = 1'b1;
                            buzzer_count = buzzer_count + 1'b1;
                        end
                        else begin
                            buzzer_count = 1'b0;
                            buzzer_output = 1'b0;
                            voted = 1'b0;
                            if (vote_count == 250) state = FINISH;
                            else state = READY;
                        end
                        
                FINISH: if (show_result) begin
                            A_Count = A_Vote;
                            B_Count = B_Vote;
                            C_Count = C_Vote;
                            vote_count = 8'b0;
                            state = READY;
                        end
                        else state = FINISH;
                default: state = READY;
            endcase
        end
    end
       
endmodule
