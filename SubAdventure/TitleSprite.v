`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:28 04/30/2013 
// Design Name: 
// Module Name:    TitleSprite 
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
module TitleSprite(hc, vc, mem_value, rom_addr, R, G, B);

	input [10:0] hc, vc;	// Coordinates of the current pixel
	input [7:0] mem_value;	// Memory value at address "rom_addr"

	output reg [14:0] rom_addr;	// ROM address
	output reg [2:0] R, G;
	output reg [1:0] B;	// RGB values outputs;
	
	reg [9:0] x, y;
	
	always @ (*) begin
		if ((hc >= 140 & hc <= 500))	// make sure thath x1-x0 = image_width
			x = hc-140;		// offset the coordinates
		else
			x = 0;
			
		if ((vc >= 210 & vc < 270))	// make sure that y1-y0 = image_height
			y = vc-210;		//offset the coordinates
		else
			y = 0;
			
		rom_addr = y * 360 + x; // calculate the address
					// rom_addr = y*image_width + x
		
		if (x==0 & y==0)		// set the color output
			{R,G,B} = 8'd255;
		else
			{R,G,B} = mem_value;
	end
endmodule