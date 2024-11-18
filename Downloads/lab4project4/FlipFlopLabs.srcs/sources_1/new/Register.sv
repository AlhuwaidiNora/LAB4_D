`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:05:49 PM
// Design Name: 
// Module Name: Register
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

// `include "DFF.sv"
module Register (
    input clk,
    input [3:0]d,
    input rst,
    output [3:0]q
);
logic w1,w2,w3,w4;

    DFF a1(.clk(clk),.rst(rst),.d(d[0]),.q(q[0]),.nq(w1));
    DFF a2(.clk(clk),.rst(rst),.d(d[1]),.q(q[1]),.nq(w2));
    DFF a3(.clk(clk),.rst(rst),.d(d[2]),.q(q[2]),.nq(w3));
    DFF a4(.clk(clk),.rst(rst),.d(d[3]),.q(q[3]),.nq(w4));

endmodule
