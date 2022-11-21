module rift2Wrap(
    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [38-1:0] io_in,
    output [38-1:0] io_out,
    output [38-1:0] io_oeb,



    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq

);

wire clock;

wire [6:0] io_num_0;
wire [6:0] io_num_1;
wire [6:0] io_num_2;
wire [6:0] io_num_3;
wire io_lock;

wire        io_enq_ready;
assign la_data_out[63] = io_enq_ready;
wire        io_enq_valid = la_data_in[63];

wire        io_deq_ready = la_data_in[62];
wire        io_deq_valid;
assign la_data_out[62] = io_deq_valid;

wire [31:0] io_op1 = la_data_in[95:64];
wire [31:0] io_op2 = la_data_in[127:96];
wire [63:0] io_res;
assign la_data_out[127:64] = io_res;


assign clock = wb_clk_i;



Multiplier i_multiplier(
  .clock(clock),
  .reset(wb_rst_i),
  .io_enq_ready(io_enq_ready),
  .io_enq_valid(io_enq_valid),
  .io_enq_bits(1'b0),
  .io_deq_ready(io_deq_ready),
  .io_deq_valid(io_deq_valid),
  .io_deq_bits(),
  .io_op1(io_op1),
  .io_op2(io_op2),
  .io_res(io_res),
  .io_flush(1'b0)
);

Sky130BLFSR i_fake(
  .clock(clock),
  .reset(wb_rst_i),
  .io_num_0(io_num_0),
  .io_num_1(io_num_1),
  .io_num_2(io_num_2),
  .io_num_3(io_num_3),
  .io_lock(io_lock)
);



assign io_oeb[27:0] = 28'b0;
assign io_out[27:0] = {io_num_3, io_num_2, io_num_1, io_num_0};
assign la_data_out[27:0] = {io_num_3, io_num_2, io_num_1, io_num_0};

//lock input
assign io_oeb[28] = 1'b1;
assign io_lock = (~la_oenb[0]) ? la_data_in[0] : io_in[28];
assign io_out[28] = 1'b0;


assign io_oeb[37:29] = 9'b0; 
assign io_out[37:29] = 9'b0; 


endmodule

