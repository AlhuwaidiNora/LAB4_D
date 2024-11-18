`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 04:31:04 PM
// Design Name: 
// Module Name: register_beh
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


module register_beh (
    input clk,
    input [3:0] d,
    input rst,
    output logic [3:0] q
);


  always @(posedge clk, negedge rst) begin
    if (~rst) q <= 4'h0;
    else q <= d;
  end
endmodule
