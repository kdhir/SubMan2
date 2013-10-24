`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:49:14 04/29/2013 
// Design Name: 
// Module Name:    drawShark 
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
module drawShark(blank, hcount, vcount, sharkX, sharkY, shark, sharkEyes);

//define I/O:

input blank;
input signed[11:0] hcount, vcount;
input signed[11:0] sharkX, sharkY;

output shark, sharkEyes;

// assign shape boundaries:

assign shark = ~blank & (((hcount>=(sharkX-55) & hcount<=(sharkX-20)) &
//body
((3*(vcount-(sharkY+10))) <= hcount-(sharkX-40)) &
((vcount-(sharkY+10)) <= (-1*(hcount-(sharkX-25)))) &
(vcount>(sharkY-5) & vcount <(sharkY+10))) |

//fin
((hcount>(sharkX-35) & hcount<=(sharkX-25)) &
((vcount-(sharkY-5)) >= (-1*(hcount-(sharkX-35)))) &
(vcount>(sharkY-15) & vcount<=(sharkY-5))) |

//tail
(((vcount-(sharkY+5)) <= (-1*(hcount-(sharkX-10)))) &
(hcount>=(sharkX-20) & hcount<=(sharkX-5)) &
(vcount>(sharkY-5) & vcount<(sharkY+5))) |

//tailfin
((hcount>=(sharkX-5) & hcount<=(sharkX+2)) &
(vcount>=(sharkY-10) & vcount<=(sharkY+7))));

assign sharkEyes = ~blank & ((hcount>=(sharkX-50) & hcount<=(sharkX-46)) & (vcount>=(sharkY-3) & vcount<=(sharkY)));

endmodule
