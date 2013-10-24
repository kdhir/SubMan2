`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:15 03/19/2013 
// Design Name: 
// Module Name:    clk_div2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_div1kHZ(clk, clk_1kHZ);
	
	
	// define I/O:
	
		input clk;
		output reg clk_1kHZ;

	// initialization:
	
		reg[26:0] timer2;
	
		initial timer2=0;
		initial clk_1kHZ=0;
	
	// operation:
	
	always @ (posedge clk)
		begin
			timer2 <= timer2 + 1;
			
		if (timer2 == 50000)
			begin
				timer2 <=0;
				clk_1kHZ <= clk_1kHZ ? 0 : 1;
			end			
		end
		
endmodule
