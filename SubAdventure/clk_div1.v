`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:46 03/19/2013 
// Design Name: 
// Module Name:    clk_div1 
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
module slow_clock(clk, slow_clk);
	
	
	// define I/O:
	
		input clk;
		output reg slow_clk;

	// initialization:
	
		reg[20:0] count;
	
		initial count=0;
		initial slow_clk=0;
	
	// operation:
	
	always @ (posedge clk) begin
		count = count + 1;
			if (count == 1000000)begin			// 50 Hz
					slow_clk=~slow_clk;
					count = 0;
				end
		end
endmodule
