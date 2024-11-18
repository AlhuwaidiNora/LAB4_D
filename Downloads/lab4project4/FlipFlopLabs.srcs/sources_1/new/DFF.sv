`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 03:11:23 PM
// Design Name: 
// Module Name: DFF
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

// `include "DLatch.sv"
module DFF (

    input  clk,
    input  rst,
    input  d,
    output q,
    output nq
);
  logic nclk, qm, nn;
  not n (nclk, clk);
  DLatch a (
      .en (nclk),
      .d  (d),
      .rst(rst),
      .q  (qm),
      .nq(nn)
  );
  DLatch b (
      .en (clk),
      .d  (qm),
      .rst(rst),
      .q  (q),
      .nq(nq)
  );
endmodule
