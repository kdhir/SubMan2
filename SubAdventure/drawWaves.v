`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:52 04/22/2013 
// Design Name: 
// Module Name:    drawWaves 
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
module drawWaves(blank, hcount, vcount, waveX, waveY, wave, nextWave);

	//define I/O:
	
	input blank;
	input signed[10:0] hcount, vcount;
	input signed[11:0] waveX, waveY;
	
	output wave;
	output signed[11:0] nextWave;
	
	// assign shape boundaries:

assign wave = ~blank & ((((hcount-(waveX))*(hcount-(waveX)))+((vcount-waveY)*(vcount-waveY))) <= 1024) |
											(hcount>=0 & hcount <=640 & vcount>=0 & vcount<=36);

assign nextWave = waveX-64;	

endmodule
