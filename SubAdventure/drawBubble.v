`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:49:55 04/25/2013 
// Design Name: 
// Module Name:    drawBubble 
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
module drawBubble(blank, hcount, vcount, bub1X, bub1Y, bubble);
   
	//define I/O:
	
	input blank;
	input signed [10:0] hcount, vcount;
	input signed [11:0] bub1X, bub1Y;
	output bubble;
	
	// assign shape boundaries:
	
	assign bubble = ~blank & ((((hcount-bub1X)*(hcount-bub1X) + (vcount-bub1Y)*(vcount-bub1Y)) <= 49 &
										(((hcount-bub1X)*(hcount-bub1X) + (vcount-bub1Y)*(vcount-bub1Y)) >= 25)));

endmodule
