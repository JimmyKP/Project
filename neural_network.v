`timescale 1ns / 1ps

`include "alu.v"
`include "sigmoid_32bit.v"

module neural_network(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,outs1,outs2,outs3,outs4);

    input [15:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21;
	output [31:0] outs1,outs2,outs3,outs4;

    wire [31:0] temp1,temp2,temp3,temp4;

    alu A1(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,temp1,temp2,temp3,temp4);
    
    sigmoid_32bit S1(temp1,outs1);
    sigmoid_32bit S2(temp2,outs2);
    sigmoid_32bit S3(temp3,outs3);
    sigmoid_32bit S4(temp4,outs4);
    /*
    initial begin
    #1
        $display("-----Output1 from alu is %d-----",temp1);
        $display("-----Output2 from alu is %d-----",temp2);
        $display("-----Output3 from alu is %d-----",temp3);
        $display("-----Output4 from alu is %d-----",temp4);
        $display("-----Output1 from sigmoid1 is %d-----",outs1);
        $display("-----Output2 from sigmoid2 is %d-----",outs2);
        $display("-----Output3 from sigmoid3 is %d-----",outs3);
        $display("-----Output4 from sigmoid4 is %d-----",outs4);
    end
    */
endmodule