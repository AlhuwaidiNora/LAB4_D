// `include "FlipFlopLabs.srcs/sources_1/new/register_beh.sv"
// `include "FlipFlopLabs.srcs/sources_1/new/Register.sv"
// `include "seven_seg_controller.sv"
module sev_seg_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,
    input wire [8:0] SW,
    input wire BTNC
);


logic reset_n;
logic clk;
assign reset_n = CPU_RESETN;
assign clk = CLK100MHZ;


// Seven segments Controller
wire [6:0] Seg;
wire [3:0] digits[0:7];
wire [3:0] q1;
wire [3:0] q2;
//assign digits[0] = SW[3:0];
//assign digits[1] = SW[7:4];
assign digits[2] = 4'b1111;
assign digits[3] = 4'b1111;
assign digits[4] = 4'b1111;
assign digits[5] = 4'b1111;
assign digits[6] = 4'b1111;
assign digits[7] = 4'b1111;

register_beh behavioural_reg(BTNC,SW[3:0],reset_n,q1);
Register dataflow_reg(BTNC,SW[7:4],reset_n,q2);
assign digits[0] = q1;
assign digits[1] = q2;


sev_seg_controller ssc(
    .clk(clk),
    .resetn(reset_n),
    .digits(digits),
    .Seg(Seg),
    .AN(AN)
);


assign {CG,CF,CE,CD,CC,CB,CA} = Seg;
assign DP = 1'b1; // turn off the dot point on seven segs


endmodule : sev_seg_top