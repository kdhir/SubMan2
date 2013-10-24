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
module drawRock(blank, hcount, vcount, rockX, rockY, rock);
   
	//define I/O:
	
	input blank;
	input signed [10:0] hcount, vcount;
	input signed [11:0] rockX, rockY;
	output rock;
	
	// assign shape boundaries:
	
	assign rock = ~blank & ((hcount>=(rockX-25) & hcount<=rockX) &
										(vcount>=rockY & vcount <= (rockY+25)));
	

endmodule
