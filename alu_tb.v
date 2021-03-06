`timescale 1ns / 1ps

`include "alu.v"
`include "sigmoid_32bit.v"

module alu_tb();

    reg [15:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21;
	wire [31:0] out1,out2,out3,out4;
    wire [31:0] out_s1,out_s2,out_s3,out_s4;

    initial begin
		$dumpfile("alu_tb.vcd");
		$dumpvars(0, alu_tb);
	end

    alu a1(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,out1,out2,out3,out4);

    sigmoid_32bit S1(out1,out_s1);
    sigmoid_32bit S2(out2,out_s2);
    sigmoid_32bit S3(out3,out_s3);
    sigmoid_32bit S4(out4,out_s4);

    initial begin
        in0 <= 16'b0000_0000_0000_0010;
        in1 <= 16'b0000_0000_0000_0010;
        in2 <= 16'b0000_0000_0000_0010;
        in3 <= 16'b0000_0000_0000_0010;
        in4 <= 16'b0000_0000_0000_0010;
        in5 <= 16'b0000_0000_0000_0010;
        in6 <= 16'b0000_0000_0000_0010;
        in7 <= 16'b0000_0000_0000_0010;
        in8 <= 16'b0000_0000_0000_0010;
        in9 <= 16'b0000_0000_0000_0010;
        in10 <= 16'b0000_0000_0000_0010;
        in11 <= 16'b0000_0000_0000_0010;
        in12 <= 16'b0000_0000_0000_0010;
        in13 <= 16'b0000_0000_0000_0010;
        in14 <= 16'b0000_0000_0000_0010;
        in15 <= 16'b0000_0000_0000_0010;
        in16 <= 16'b0000_0000_0000_0010;
        in17 <= 16'b0000_0000_0000_0010;
        in18 <= 16'b0000_0000_0000_0010;
        in19 <= 16'b0000_0000_0000_0010;
        in20 <= 16'b0000_0000_0000_0010;
        in21 <= 16'b0000_0000_0000_0010;
        
        #1 $display("-----Output1 is %h-----",out_s1);
        $display("-----Output2 is %h-----",out_s2);
        $display("-----Output3 is %h-----",out_s3);
        $display("-----Output4 is %h-----",out_s4);

        #5
        in0 <= 16'b0000_0000_0000_0110;
        in1 <= 16'b0000_0000_0000_1010;
        in2 <= 16'b0000_0000_0000_1010;
        in3 <= 16'b0000_0000_0000_0110;
        in4 <= 16'b0000_0000_0000_0110;
        in5 <= 16'b0000_0000_0000_0110;
        in6 <= 16'b0000_0000_0000_1010;
        in7 <= 16'b0000_0000_0000_1010;
        in8 <= 16'b0000_0000_0000_1110;
        in9 <= 16'b0000_0000_0000_1110;
        in10 <= 16'b0000_0000_0000_1010;
        in11 <= 16'b0000_0000_0000_1010;
        in12 <= 16'b0000_0000_0000_0110;
        in13 <= 16'b0000_0000_0000_0011;
        in14 <= 16'b0000_0000_0000_0011;
        in15 <= 16'b0000_0000_0000_0111;
        in16 <= 16'b0000_0000_0000_0110;
        in17 <= 16'b0000_0000_0000_0010;
        in18 <= 16'b0000_0000_0000_1110;
        in19 <= 16'b0000_0000_0000_1010;
        in20 <= 16'b0000_0000_0000_1010;
        in21 <= 16'b0000_0000_0000_0110;
        
        #1 $display("\n-----Output1 is %h-----",out_s1);
        $display("-----Output2 is %h-----",out_s2);
        $display("-----Output3 is %h-----",out_s3);
        $display("-----Output4 is %h-----",out_s4);
        
        #5
        in0 <= 16'b0000_0000_0001_0110;
        in1 <= 16'b0000_0000_0100_1010;
        in2 <= 16'b0000_0000_0100_1010;
        in3 <= 16'b0000_0000_0010_0110;
        in4 <= 16'b0000_0000_1100_0110;
        in5 <= 16'b0000_0000_0010_0110;
        in6 <= 16'b0000_0000_0010_1010;
        in7 <= 16'b0000_0000_0110_1010;
        in8 <= 16'b0000_0000_0011_1110;
        in9 <= 16'b0000_0000_0001_1110;
        in10 <= 16'b0000_0000_0100_1010;
        in11 <= 16'b0000_0000_1000_1010;
        in12 <= 16'b0000_0000_0100_0110;
        in13 <= 16'b0000_0000_0100_0011;
        in14 <= 16'b0000_0000_1100_0011;
        in15 <= 16'b0000_0000_0100_0111;
        in16 <= 16'b0000_0000_0010_0110;
        in17 <= 16'b0000_0000_0100_0010;
        in18 <= 16'b0000_0000_0010_1110;
        in19 <= 16'b0000_0000_0100_1010;
        in20 <= 16'b0000_0000_0010_1010;
        in21 <= 16'b0000_0000_1100_0110;

        #1 $display("\n-----Output1 is %h-----",out_s1);
        $display("-----Output2 is %h-----",out_s2);
        $display("-----Output3 is %h-----",out_s3);
        $display("-----Output4 is %h-----",out_s4);

        #10 $finish;
    end

endmodule