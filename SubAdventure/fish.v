`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:11:31 04/18/2013 
// Design Name: 
// Module Name:    fish 
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
module drawFish(blank, hcount, vcount, fishX, fishY, fish, fishEyes);

	//define I/O:
	
	input blank;
	input signed [11:0] fishX, fishY;
	input signed [10:0] hcount,vcount;
	output fish, fishEyes;
	
	// assign shape boundaries:

	assign fish = ~blank & 	((hcount>=(fishX-90) & hcount <=(fishX-30) &           // body
										vcount>=(fishY-30) & vcount<=(fishY+30)) |
									(hcount>=(fishX-30) & hcount <=(fishX-20) &
										vcount>=(fishY-20) & vcount<=(fishY+23)) |
									(hcount>=(fishX-20) & hcount <=(fishX-15) &
										vcount>=(fishY-10) & vcount<=(fishY+15)) |
									(hcount>=(fishX-15) & hcount <=(fishX-10) &
										vcount>=(fishY) & vcount<=(fishY+10))   |
								   (hcount>=(fishX-10) & hcount<=(fishX) &					// tail
									(vcount>(fishY-15) & vcount<(fishY+27))	&
										((vcount-(fishY-15))>=(-(hcount-fishX)))   &
										((vcount-(fishY+27))<=(hcount-fishX))))
										&
									~((((hcount>=(fishX-79) & hcount<=(fishX-71))|          // mouth
										  (hcount>=(fishX-64) & hcount<=(fishX-57))  |
										  (hcount>=(fishX-53) & hcount<=(fishX-49)))  &
										  (vcount<=(fishY+11) & vcount>=(fishY))) |
										  (((hcount>=(fishX-90) & hcount<=(fishX-80))|
										  (hcount>=(fishX-72) & hcount<=(fishX-65))  |
										  (hcount>=(fishX-57) & hcount<=(fishX-49)))  &
										  (vcount<=(fishY+16) & vcount>=(fishY+6))));			
																		
	assign fishEyes = ~blank & (hcount>=(fishX-85) & hcount<=(fishX-75) &			// eyes
											vcount>=(fishY-20) & vcount <=(fishY-12))	|										
										(hcount>=(fishX-72) & hcount<=(fishX-60) &
											vcount>=(fishY-23) & vcount <=(fishY-11));

endmodule
