`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2024 02:34:04 PM
// Design Name: 
// Module Name: tb_Register
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


module tb_Register;
  logic clk, rst;
  logic [3:0] d, q1,q2;

  Register test (
      .clk(clk),
      .d  (d),
      .rst(rst),
      .q  (q1)
  );
  register_beh n (
      .clk(clk),
      .d  (d),
      .rst(rst),
      .q  (q2)
  );

  initial begin
    rst = 1'b0;
    d   = 4'h0;
    clk = 1'b0;
    #5;
    rst = 1'b1;
    d   = 4'h9;
    clk = 1'b0;
    #5;
    rst = 1'b1;
    d   = 4'h9;
    clk = 1'b1;
    #5;
    rst = 1'b1;
    d   = 4'h9;
    clk = 1'b0;
    #5;
    rst = 1'b0;
    d   = 4'h9;
    clk = 1'b0;
    #5;
    rst = 1'b1;
    d   = 4'h1;
    clk = 1'b0;
    #5;
    rst = 1'b1;
    clk = 1'b1;
    d   = 4'h1;
    #5;
    rst = 1'b1;
    clk = 1'b1;
    d   = 4'h1;
    #5;
    rst = 1'b0;
    clk = 1'b1;
    d   = 4'h1;
    $finish;
  end



endmodule
