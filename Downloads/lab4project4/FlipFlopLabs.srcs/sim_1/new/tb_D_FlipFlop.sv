`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:31:10 PM
// Design Name: 
// Module Name: tb_D_FlipFlop
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

// `include "FlipFlopLabs.srcs/sources_1/new/D_FlipFlop.sv"
module tb_D_FlipFlop ();
  logic en, d, rst, q,nq;

  DFF test (
      .clk(en),
      .d  (d),
      .rst(rst),
      .q  (q),
      .nq(nq)
  );


  initial begin
    rst = 1'b0;
    d = 1'b0;
    en = 1'b0;
    #10
    en  = 1'b1;
    d   = 1'b1;
    rst = 1'b1;
    #5;
    en  = 1'b0;
    d   = 1'b1;
    rst = 1'b1;
    #5;
    en  = 1'b1;
    d   = 1'b1;
    rst = 1'b1;
    #5;
    en  = 1'b0;
    d   = 1'b0;
    rst = 1'b1;
    #5;
    en  = 1'b0;
    d   = 1'b1;
    rst = 1'b1;
    #5;
    en  = 1'b1;
    d   = 1'b1;
    rst = 1'b1;
    #5;
    en  = 1'b1;
    d   = 1'b1;
    rst = 1'b0;
    #5;
    en  = 1'b1;
    d   = 1'b0;
    rst = 1'b1;
    #5;
    $finish;
  end

endmodule
