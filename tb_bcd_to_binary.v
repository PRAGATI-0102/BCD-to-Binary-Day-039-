`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2023 09:48:39 PM
// Design Name: 
// Module Name: tb_bcd_to_binary
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


module tb_bcd_to_binary();

    reg [7:0] bcd_code;
    wire [3:0] binary_code;
    
    bcd_to_binary btb (.in(bcd_code),.out(binary_code));

    initial begin
        $monitor ("bcd code=%b %b, binary code=%b",bcd_code[7:4],bcd_code[3:0],binary_code);
                bcd_code=8'b0;
            #5  bcd_code=8'b1;
            #5  bcd_code=8'b10;
            #5  bcd_code=8'b11;
            #5  bcd_code=8'b100;
            #5  bcd_code=8'b101;
            #5  bcd_code=8'b110;
            #5  bcd_code=8'b111;
            #5  bcd_code=8'b1000;
            #5  bcd_code=8'b1001;
            #5  bcd_code=8'b10000;
            #5  bcd_code=8'b10001;
            #5  bcd_code=8'b10010;
            #5  bcd_code=8'b10011;
            #5  bcd_code=8'b10100;
            #5  bcd_code=8'b10101;
        $finish;
    end
endmodule
