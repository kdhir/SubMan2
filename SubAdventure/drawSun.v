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
module drawMoon(blank, hcount, vcount, moonX, moonY, moon);
   
	//define I/O:
	
	input blank;
	input signed [10:0] hcount, vcount;
	input signed [11:0] moonX, moonY;
	output moon;
	
	// assign shape boundaries:
	
	assign moon = ~blank & (((hcount-moonX)*(hcount-moonX) + (vcount-moonY)*(vcount-moonY)) <= 1224);
//	assign crater1 = ~blank & ((((hcount-380)*(hcount-380) + (vcount-10)*(vcount-10)) <= 36) &
//										(((hcount-380)*(hcount-380) + (vcount-10)*(vcount-10)) >= 16));
//										
//	assign crater2 = ~blank & ((((hcount-380)*(hcount-380) + (vcount-10)*(vcount-10)) <= 36) &
//										(((hcount-380)*(hcount-380) + (vcount-10)*(vcount-10)) >= 16));

endmodule
