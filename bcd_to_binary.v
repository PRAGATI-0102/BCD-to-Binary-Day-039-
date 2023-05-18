`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2023 09:47:11 PM
// Design Name: 
// Module Name: bcd_to_binary
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bcd_to_binary (in,out);
	input [7:0] in;
	output [3:0] out;
	
	assign out[0]=in[0];
	assign out[1]=in[1]^in[4];
	assign out[2]=in[2]|(in[4]&in[1]);
	assign out[3]=in[3]|in[4];
	
endmodule 
