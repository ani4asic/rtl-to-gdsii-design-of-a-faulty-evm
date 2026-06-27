
//input ports
add mapped point clk clk -type PI PI
add mapped point reset reset -type PI PI
add mapped point A_Push A_Push -type PI PI
add mapped point B_Push B_Push -type PI PI
add mapped point C_Push C_Push -type PI PI
add mapped point ballot_signal ballot_signal -type PI PI
add mapped point show_result show_result -type PI PI

//output ports
add mapped point A_Led A_Led -type PO PO
add mapped point B_Led B_Led -type PO PO
add mapped point C_Led C_Led -type PO PO
add mapped point buzzer_output buzzer_output -type PO PO
add mapped point limit_exceeded limit_exceeded -type PO PO
add mapped point A_Count[7] A_Count[7] -type PO PO
add mapped point A_Count[6] A_Count[6] -type PO PO
add mapped point A_Count[5] A_Count[5] -type PO PO
add mapped point A_Count[4] A_Count[4] -type PO PO
add mapped point A_Count[3] A_Count[3] -type PO PO
add mapped point A_Count[2] A_Count[2] -type PO PO
add mapped point A_Count[1] A_Count[1] -type PO PO
add mapped point A_Count[0] A_Count[0] -type PO PO
add mapped point B_Count[7] B_Count[7] -type PO PO
add mapped point B_Count[6] B_Count[6] -type PO PO
add mapped point B_Count[5] B_Count[5] -type PO PO
add mapped point B_Count[4] B_Count[4] -type PO PO
add mapped point B_Count[3] B_Count[3] -type PO PO
add mapped point B_Count[2] B_Count[2] -type PO PO
add mapped point B_Count[1] B_Count[1] -type PO PO
add mapped point B_Count[0] B_Count[0] -type PO PO
add mapped point C_Count[7] C_Count[7] -type PO PO
add mapped point C_Count[6] C_Count[6] -type PO PO
add mapped point C_Count[5] C_Count[5] -type PO PO
add mapped point C_Count[4] C_Count[4] -type PO PO
add mapped point C_Count[3] C_Count[3] -type PO PO
add mapped point C_Count[2] C_Count[2] -type PO PO
add mapped point C_Count[1] C_Count[1] -type PO PO
add mapped point C_Count[0] C_Count[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point A_Vote[7]/q A_Vote_reg[7]/Q  -type DFF DFF
add mapped point C_Vote[7]/q C_Vote_reg[7]/Q  -type DFF DFF
add mapped point B_Vote[7]/q B_Vote_reg[7]/Q  -type DFF DFF
add mapped point A_Vote[6]/q A_Vote_reg[6]/Q  -type DFF DFF
add mapped point C_Vote[6]/q C_Vote_reg[6]/Q  -type DFF DFF
add mapped point B_Vote[6]/q B_Vote_reg[6]/Q  -type DFF DFF
add mapped point A_Vote[3]/q A_Vote_reg[3]/Q  -type DFF DFF
add mapped point C_Vote[5]/q C_Vote_reg[5]/Q  -type DFF DFF
add mapped point B_Vote[5]/q B_Vote_reg[5]/Q  -type DFF DFF
add mapped point A_Vote[4]/q A_Vote_reg[4]/Q  -type DFF DFF
add mapped point C_Vote[4]/q C_Vote_reg[4]/Q  -type DFF DFF
add mapped point B_Vote[4]/q B_Vote_reg[4]/Q  -type DFF DFF
add mapped point A_Vote[5]/q A_Vote_reg[5]/Q  -type DFF DFF
add mapped point B_Vote[1]/q B_Vote_reg[1]/Q  -type DFF DFF
add mapped point B_Vote[3]/q B_Vote_reg[3]/Q  -type DFF DFF
add mapped point C_Vote[2]/q C_Vote_reg[2]/Q  -type DFF DFF
add mapped point C_Vote[1]/q C_Vote_reg[1]/Q  -type DFF DFF
add mapped point C_Vote[3]/q C_Vote_reg[3]/Q  -type DFF DFF
add mapped point B_Vote[2]/q B_Vote_reg[2]/Q  -type DFF DFF
add mapped point A_Vote[2]/q A_Vote_reg[2]/Q  -type DFF DFF
add mapped point A_Vote[1]/q A_Vote_reg[1]/Q  -type DFF DFF
add mapped point vote_count[7]/q vote_count_reg[7]/Q  -type DFF DFF
add mapped point C_Vote[0]/q C_Vote_reg[0]/Q  -type DFF DFF
add mapped point vote_count[5]/q vote_count_reg[5]/Q  -type DFF DFF
add mapped point vote_count[6]/q vote_count_reg[6]/Q  -type DFF DFF
add mapped point vote_count[3]/q vote_count_reg[3]/Q  -type DFF DFF
add mapped point vote_count[1]/q vote_count_reg[1]/Q  -type DFF DFF
add mapped point vote_count[2]/q vote_count_reg[2]/Q  -type DFF DFF
add mapped point A_Vote[0]/q A_Vote_reg[0]/Q  -type DFF DFF
add mapped point B_Vote[0]/q B_Vote_reg[0]/Q  -type DFF DFF
add mapped point vote_count[4]/q vote_count_reg[4]/Q  -type DFF DFF
add mapped point voted/q voted_reg/Q  -type DFF DFF
add mapped point state[0]/q state_reg[0]/Q  -type DFF DFF
add mapped point vote_count[0]/q vote_count_reg[0]/Q  -type DFF DFF
add mapped point state[1]/q state_reg[1]/Q  -type DFF DFF
add mapped point limit_exceeded/q limit_exceeded_reg/Q  -type DFF DFF
add mapped point buzzer_count[1]/q buzzer_count_reg[1]/Q  -type DFF DFF
add mapped point buzzer_count[0]/q buzzer_count_reg[0]/Q  -type DFF DFF
add mapped point B_Count[2]/q B_Count_reg[2]/Q  -type DFF DFF
add mapped point C_Count[1]/q C_Count_reg[1]/Q  -type DFF DFF
add mapped point C_Count[0]/q C_Count_reg[0]/Q  -type DFF DFF
add mapped point B_Count[6]/q B_Count_reg[6]/Q  -type DFF DFF
add mapped point A_Count[1]/q A_Count_reg[1]/Q  -type DFF DFF
add mapped point A_Count[0]/q A_Count_reg[0]/Q  -type DFF DFF
add mapped point B_Count[3]/q B_Count_reg[3]/Q  -type DFF DFF
add mapped point A_Count[3]/q A_Count_reg[3]/Q  -type DFF DFF
add mapped point B_Count[5]/q B_Count_reg[5]/Q  -type DFF DFF
add mapped point B_Count[0]/q B_Count_reg[0]/Q  -type DFF DFF
add mapped point B_Count[1]/q B_Count_reg[1]/Q  -type DFF DFF
add mapped point A_Count[2]/q A_Count_reg[2]/Q  -type DFF DFF
add mapped point C_Count[4]/q C_Count_reg[4]/Q  -type DFF DFF
add mapped point C_Count[3]/q C_Count_reg[3]/Q  -type DFF DFF
add mapped point C_Count[5]/q C_Count_reg[5]/Q  -type DFF DFF
add mapped point A_Count[7]/q A_Count_reg[7]/Q  -type DFF DFF
add mapped point B_Count[4]/q B_Count_reg[4]/Q  -type DFF DFF
add mapped point C_Count[7]/q C_Count_reg[7]/Q  -type DFF DFF
add mapped point A_Count[5]/q A_Count_reg[5]/Q  -type DFF DFF
add mapped point C_Count[2]/q C_Count_reg[2]/Q  -type DFF DFF
add mapped point A_Count[6]/q A_Count_reg[6]/Q  -type DFF DFF
add mapped point C_Count[6]/q C_Count_reg[6]/Q  -type DFF DFF
add mapped point A_Count[4]/q A_Count_reg[4]/Q  -type DFF DFF
add mapped point B_Count[7]/q B_Count_reg[7]/Q  -type DFF DFF
add mapped point buzzer_output/q buzzer_output_reg/Q  -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
