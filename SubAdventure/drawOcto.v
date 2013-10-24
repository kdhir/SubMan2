`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:30 04/22/2013 
// Design Name: 
// Module Name:    drawOcto 
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
module drawOcto(blank, hcount, vcount, octoX, octoY, octopus, octoEyes);

	//define I/O:
	
	input blank;
	input signed[11:0] octoX, octoY;
	input signed [10:0] hcount,vcount;
	
	output octopus, octoEyes;
	
	// assign shape boundaries:

	assign octopus = ~blank &  (hcount>=(octoX-65) & hcount<=(octoX-20) &			// body
											vcount>=(octoY-25) & vcount <=(octoY+20))|										
										(hcount>=(octoX-90) & hcount<=(octoX-65) &			// legs
											vcount>=(octoY+7) & vcount <=(octoY+20))|										
										(hcount>=(octoX-100) & hcount<=(octoX-80) &
											vcount>=(octoY+20) & vcount <=(octoY+30))|										
										(hcount>=(octoX-65) & hcount<=(octoX-55) &
											vcount>=(octoY+20) & vcount <=(octoY+45))|										
										(hcount>=(octoX-70) & hcount<=(octoX-60) &
											vcount>=(octoY+40) & vcount <=(octoY+55))|										
										(hcount>=(octoX-45) & hcount<=(octoX-35) &
											vcount>=(octoY+20) & vcount <=(octoY+45))|										
										(hcount>=(octoX-35) & hcount<=(octoX-25) &
											vcount>=(octoY+35) & vcount <=(octoY+60))|										
										(hcount>=(octoX-35) & hcount<=(octoX-20) &
											vcount>=(octoY+50) & vcount <=(octoY+60))|										
										(hcount>=(octoX-30) & hcount<=(octoX-5) &
											vcount>=(octoY+20) & vcount <=(octoY+30))|										
										(hcount>=(octoX-15) & hcount<=(octoX-5) &
											vcount>=(octoY+20) & vcount <=(octoY+45))|										
										(hcount>=(octoX-15) & hcount<=(octoX) &
											vcount>=(octoY+35) & vcount <=(octoY+45));	

	assign octoEyes = ~blank &   (hcount>=(octoX-57) & hcount<=(octoX-45) &			// eyes
											vcount>=(octoY-20) & vcount <=(octoY-5))|										
										(hcount>=(octoX-40) & hcount<=(octoX-30) &
											vcount>=(octoY-17) & vcount <=(octoY-5));									
											

endmodule
