`timescale 1ns/1ps

module sigmoid_8bit(x,out);

   input signed [7:0] x;
   output signed [9:0] out;
    
   wire signed [7:0] sum;
   wire signed [15:0] sq;
    
	step1_8bit s1(x,sum);
	multiplier_8bit mul(sum,sum,sq);
	step2_8bit s2(x,sq,out);
	
endmodule

module step1_8bit(x,out);
	input signed [7:0] x;
	output reg signed [7:0] out;
	
	reg signed [7:0] y,z; 
	always@(x) begin
		
		if (x[7]==1'b1)
			y = -x;
		else
			y = x;
		
		z = y >>> 2 ;
		if(x[7]==1'b1)begin
			if(x>-64)
				out = 8'b1111_0000 + z;
			else
				out = 0;
		end
		else
			if(x<63)
				out = 8'b0001_0000 - z;
			else
				out = 1;
      
	end

endmodule

module multiplier_8bit(a,b,out);
	
	input signed [7:0] a,b;
	output reg signed [15:0] out;
	
	always@(a,b) begin
		out = a * b;
	end

endmodule

module step2_8bit(x,a,out);
	input signed [7:0] x;
	input signed [15:0] a;
	output reg signed [9:0] out;
	
	reg signed [15:0] temp1,temp2;
	
	always@(a)
   begin
		temp1 = a >>> 1;

		if(x[7] == 1'b1)
			temp2 = temp1;
		else
			temp2 = 16'b0000_0001_0000_0000 - temp1;
		out = temp2[9:0];
		
		$display("%b,%b",x,out);
		
	end

endmodule
