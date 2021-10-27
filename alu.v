`timescale 1ns / 1ps

module alu(in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21,out1,out2,out3,out4);

	input [15:0] in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,in17,in18,in19,in20,in21;
	output reg [31:0] out1,out2,out3,out4;
	integer i;
	
	reg [15:0] weights1 [0:21];
	reg [15:0] weights2 [0:21];
	reg [15:0] weights3 [0:21];
	reg [15:0] weights4 [0:21];
	reg [31:0] baise [0:3];
	reg [31:0] mul1 [0:21];
	reg [31:0] mul2 [0:21];
	reg [31:0] mul3 [0:21];
	reg [31:0] mul4 [0:21];

	initial begin
		$readmemb("weights1.txt", weights1);
		$readmemb("weights2.txt", weights2);
		$readmemb("weights3.txt", weights3);
		$readmemb("weights4.txt", weights4);
		$readmemb("baise.txt", baise);
	end

	initial begin
		for (i = 0; i < 32; i = i + 1)begin
			mul1[i] = 0;
			mul2[i] = 0;
			mul3[i] = 0;
			mul4[i] = 0;
		end
	end

	always@(*) begin
		mul1[0] <= weights1[0]*in0;
		mul1[1] <= weights1[1]*in1;
		mul1[2] <= weights1[2]*in2;
		mul1[3] <= weights1[3]*in3;
		mul1[4] <= weights1[4]*in4;
		mul1[5] <= weights1[5]*in5;
		mul1[6] <= weights1[6]*in6;
		mul1[7] <= weights1[7]*in7;
		mul1[8] <= weights1[8]*in8;
		mul1[9] <= weights1[9]*in9;
		mul1[10] <= weights1[10]*in10;
		mul1[11] <= weights1[11]*in11;
		mul1[12] <= weights1[12]*in12;
		mul1[13] <= weights1[13]*in13;
		mul1[14] <= weights1[14]*in14;
		mul1[15] <= weights1[15]*in15;
		mul1[16] <= weights1[16]*in16;
		mul1[17] <= weights1[17]*in17;
		mul1[18] <= weights1[18]*in18;
		mul1[19] <= weights1[19]*in19;
		mul1[20] <= weights1[20]*in20;
		mul1[21] <= weights1[21]*in21;
		out1 = baise[0] + mul1[0] + mul1[1] + mul1[2] + mul1[3] + mul1[4] + mul1[5] + mul1[6] + mul1[7] + mul1[8] + mul1[9] + mul1[10] + mul1[11] + mul1[12] + mul1[13] + mul1[14] + mul1[15] + mul1[16] + mul1[17] + mul1[18] + mul1[19] + mul1[20] + mul1[21];
		//$display("-----Output1 is %d-----",out1);
	end

	always@(*) begin
		mul2[0] <= weights2[0]*in0;
		mul2[1] <= weights2[1]*in1;
		mul2[2] <= weights2[2]*in2;
		mul2[3] <= weights2[3]*in3;
		mul2[4] <= weights2[4]*in4;
		mul2[5] <= weights2[5]*in5;
		mul2[6] <= weights2[6]*in6;
		mul2[7] <= weights2[7]*in7;
		mul2[8] <= weights2[8]*in8;
		mul2[9] <= weights2[9]*in9;
		mul2[10] <= weights2[10]*in10;
		mul2[11] <= weights2[11]*in11;
		mul2[12] <= weights2[12]*in12;
		mul2[13] <= weights2[13]*in13;
		mul2[14] <= weights2[14]*in14;
		mul2[15] <= weights2[15]*in15;
		mul2[16] <= weights2[16]*in16;
		mul2[17] <= weights2[17]*in17;
		mul2[18] <= weights2[18]*in18;
		mul2[19] <= weights2[19]*in19;
		mul2[20] <= weights2[20]*in20;
		mul2[21] <= weights2[21]*in21;
		out2 = baise[1] + mul2[0] + mul2[1] + mul2[2] + mul2[3] + mul2[4] + mul2[5] + mul2[6] + mul2[7] + mul2[8] + mul2[9] + mul2[10] + mul2[11] + mul2[12] + mul2[13] + mul2[14] + mul2[15] + mul2[16] + mul2[17] + mul2[18] + mul2[19] + mul2[20] + mul2[21];
		//$display("-----Output2 is %d-----",out2);
	end

	always@(*) begin
		mul3[0] <= weights3[0]*in0;
		mul3[1] <= weights3[1]*in1;
		mul3[2] <= weights3[2]*in2;
		mul3[3] <= weights3[3]*in3;
		mul3[4] <= weights3[4]*in4;
		mul3[5] <= weights3[5]*in5;
		mul3[6] <= weights3[6]*in6;
		mul3[7] <= weights3[7]*in7;
		mul3[8] <= weights3[8]*in8;
		mul3[9] <= weights3[9]*in9;
		mul3[10] <= weights3[10]*in10;
		mul3[11] <= weights3[11]*in11;
		mul3[12] <= weights3[12]*in12;
		mul3[13] <= weights3[13]*in13;
		mul3[14] <= weights3[14]*in14;
		mul3[15] <= weights3[15]*in15;
		mul3[16] <= weights3[16]*in16;
		mul3[17] <= weights3[17]*in17;
		mul3[18] <= weights3[18]*in18;
		mul3[19] <= weights3[19]*in19;
		mul3[20] <= weights3[20]*in20;
		mul3[21] <= weights3[21]*in21;
		out3 = baise[2] + mul3[0] + mul3[1] + mul3[2] + mul3[3] + mul3[4] + mul3[5] + mul3[6] + mul3[7] + mul3[8] + mul3[9] + mul3[10] + mul3[11] + mul3[12] + mul3[13] + mul3[14] + mul3[15] + mul3[16] + mul3[17] + mul3[18] + mul3[19] + mul3[20] + mul3[21];
		//$display("-----Output3 is %d-----",out3);
	end

	always@(*) begin
		mul4[0] <= weights4[0]*in0;
		mul4[1] <= weights4[1]*in1;
		mul4[2] <= weights4[2]*in2;
		mul4[3] <= weights4[3]*in3;
		mul4[4] <= weights4[4]*in4;
		mul4[5] <= weights4[5]*in5;
		mul4[6] <= weights4[6]*in6;
		mul4[7] <= weights4[7]*in7;
		mul4[8] <= weights4[8]*in8;
		mul4[9] <= weights4[9]*in9;
		mul4[10] <= weights4[10]*in10;
		mul4[11] <= weights4[11]*in11;
		mul4[12] <= weights4[12]*in12;
		mul4[13] <= weights4[13]*in13;
		mul4[14] <= weights4[14]*in14;
		mul4[15] <= weights4[15]*in15;
		mul4[16] <= weights4[16]*in16;
		mul4[17] <= weights4[17]*in17;
		mul4[18] <= weights4[18]*in18;
		mul4[19] <= weights4[19]*in19;
		mul4[20] <= weights4[20]*in20;
		mul4[21] <= weights4[21]*in21;
		out4 = baise[3] + mul4[0] + mul4[1] + mul4[2] + mul4[3] + mul4[4] + mul4[5] + mul4[6] + mul4[7] + mul4[8] + mul4[9] + mul4[10] + mul4[11] + mul4[12] + mul4[13] + mul4[14] + mul4[15] + mul4[16] + mul4[17] + mul4[18] + mul4[19] + mul4[20] + mul4[21];
		//$display("-----Output4 is %d-----",out4);
	end

endmodule
