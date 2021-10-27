`timescale 1ns / 1ps

`include "sigmoid_8bit.v"
`include "sigmoid_16bit.v"
`include "sigmoid_32bit.v"

module testbench();

    reg signed [7:0] a;
	reg signed [15:0] b;
	reg signed [31:0] c;
    wire [9:0] out1;
	wire [19:0] out2;
	wire [31:0] out3;
    
	integer i,j,k,fd1,fd2,fd3,fd4,fd5,fd6;
	
    sigmoid_8bit s1(a,out1);
	sigmoid_16bit s2(b,out2);
	sigmoid_32bit s3(c,out3);
	
	initial begin
		$dumpfile("testbench.vcd");
		$dumpvars(0, testbench);
	end

	initial begin
		fd1 = $fopen("data_8bit_input.txt", "w");
		fd2 = $fopen("data_16bit_input.txt", "w");
		fd3 = $fopen("data_32bit_input.txt", "w");
		fd4 = $fopen("data_8bit_output.txt", "w");
		fd5 = $fopen("data_16bit_output.txt", "w");
		fd6 = $fopen("data_32bit_output.txt", "w");
	end

   initial begin
		for (i = -128; i <= 127; i = i+1) begin
			a = i;
			$fwriteb(fd1,"%b\n",   out1);
			$fwriteb(fd4,"%b\n",   a);
			#16;
		end
	end

	initial begin
		for (j = -2048; j <= 2047; j = j+1) begin
			b = j;
			$fwriteb(fd2,"%b\n",   out2);
			$fwriteb(fd5,"%b\n",   b);
			#1;
		end
	end
	
	initial begin
		for (k = -131072; k <= 131071; k = k+10) begin
			c = k;
			$fwriteb(fd3,"%b\n",   out3);
			$fwriteb(fd6,"%b\n",   c);
			#0.15625;
		end
	end
	
endmodule
