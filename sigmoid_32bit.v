`timescale 1ns/1ps

module sigmoid_32bit(x,out);

   input signed [31:0] x;
   output signed [31:0] out;
    
   wire signed [31:0] sum;
   wire signed [63:0] sq;
    
	step1_32bit s1(x,sum);
	multiplier_32bit mul(sum,sum,sq);
	step2_32bit s2(x,sq,out);
	
endmodule

module step1_32bit(x,out);
	input signed [31:0] x;
	output reg signed [31:0] out;
	
	reg signed [31:0] y,z; 
	always@(x) begin
		
		if (x[31]==1'b1)
			y = -x;
		else
			y = x;
		
		z = y >>> 2 ;
		
		if(x[31]==1'b1)begin
			if(x>-65536)
				out = 32'b1111_1111_1111_1111_1100_0000_0000_0000 + z;
			else
				out = 0;
		end
		else
			if(x<65535)
				out = 32'b0000_0000_0000_0000_0100_0000_0000_0000 - z;
			else
				out = 1;
      
	end

endmodule

module multiplier_32bit(a,b,out);
	
	input signed [31:0] a,b;
	output reg signed [63:0] out;
	
	always@(a,b) begin
		out = a * b;
	end

endmodule

module step2_32bit(x,a,out);
	input signed [31:0] x;
	input signed [63:0] a;
	output reg signed [31:0] out;
	
	reg signed [63:0] temp1,temp2;
	
	always@(a)
   begin
		temp1 = a >>> 1;

		if(x[31] == 1'b1)
			temp2 = temp1;
		else
			temp2 = 64'b0000_0000_0000_0000_0000_0000_0000_0000_0001_0000_0000_0000_0000_0000_0000_0000 - temp1;
   
		out = temp2[31:0];
	
		$display("%b,%b",x,out);
	end

endmodule