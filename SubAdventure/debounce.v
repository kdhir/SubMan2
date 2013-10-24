`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:45 03/19/2013 
// Design Name: 
// Module Name:    debounce 
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

module debounce(clk, pButton, bState);

input clk;				// clock
input pButton;       // the button we press
output reg bState;   // stores the stable state of the button

reg[22:0] bPUSH;    // counts how many clock cycles the button stays pushed
reg[22:0] bUP;		  // counts how many clock cycles the button stays up 
reg[22:0] timer;  // this increments with the clock after a button press event

// initializations:

initial bPUSH = 0;
initial bUP = 0;
initial bState = 0;
initial timer <= 5000001;
	
//	checking and waiting conditions:

	always @ (posedge clk) begin
		if (pButton)
			bPUSH <= bPUSH +1;
		else
			bUP <= bUP +1;
		
		if (bPUSH == 100)
			begin
				bState <=1;
				timer <= 0;
			end
			
		if (bUP == 100)
			begin
				bState <=0;
				timer <= 5000001;
			end
			
		if (timer < 5000000)
				timer <= timer + 1;
			
		if (timer == 5000000)
			begin
				timer <= 5000001;
				bPUSH <= 0;
				bUP <= 0;
			end
			
		end
		
endmodule

