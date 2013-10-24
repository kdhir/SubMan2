`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:30:59 04/23/2013 
// Design Name: 
// Module Name:    drawRock 
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
module drawStar(blank, hcount, vcount, starX, starY, star);
   
	//define I/O:
	
	input blank;
	input signed [10:0] hcount, vcount;
	input signed [11:0] starX, starY;
	output star;
	
	// assign shape boundaries:
	
	assign rock = ~blank & ((hcount>=(starX-2) & hcount<=starX) &
										(vcount>=starY & vcount <= (starY+2)));
	

endmodule
