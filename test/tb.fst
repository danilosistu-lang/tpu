$date
	Sat Aug  8 12:28:05 2026
$end
$version
	Icarus Verilog
$end
$timescale
	1ps
$end
$scope module tb $end
$var wire 4 ! activ_addr [3:0] $end
$var wire 8 " activ_data [7:0] $end
$var wire 1 # activ_load_en $end
$var wire 1 $ busy $end
$var wire 32 % cmd_arg [31:0] $end
$var wire 3 & cmd_opcode [2:0] $end
$var wire 1 ' cmd_ready $end
$var wire 1 ( cmd_valid $end
$var wire 1 ) done $end
$var wire 1 * interrupt $end
$var wire 8 + uio_oe [7:0] $end
$var wire 4 , weight_addr [3:0] $end
$var wire 8 - weight_data [7:0] $end
$var wire 1 . weight_load_en $end
$var wire 8 / uo_out [7:0] $end
$var wire 8 0 uio_out [7:0] $end
$var reg 1 1 clk $end
$var reg 1 2 ena $end
$var reg 1 3 rst_n $end
$var reg 8 4 ui_in [7:0] $end
$var reg 8 5 uio_in [7:0] $end
$scope module user_project $end
$var wire 1 6 a_ready $end
$var wire 4 7 activ_addr [3:0] $end
$var wire 8 8 activ_data [7:0] $end
$var wire 1 9 activ_load_en $end
$var wire 1 : b_ready $end
$var wire 1 1 clk $end
$var wire 32 ; cmd_arg [31:0] $end
$var wire 3 < cmd_opcode [2:0] $end
$var wire 1 = cmd_valid $end
$var wire 1 2 ena $end
$var wire 1 3 rst_n $end
$var wire 1 > tpu_busy $end
$var wire 1 ? tpu_irq $end
$var wire 8 @ ui_in [7:0] $end
$var wire 8 A uio_in [7:0] $end
$var wire 8 B uio_oe [7:0] $end
$var wire 8 C uo_out [7:0] $end
$var wire 4 D weight_addr [3:0] $end
$var wire 8 E weight_data [7:0] $end
$var wire 1 F weight_load_en $end
$var wire 8 G uio_out [7:0] $end
$var wire 1 H stream_valid $end
$var wire 1 I serial_data_in $end
$var wire 1 J o_valid $end
$var wire 1 K interrupt $end
$var wire 1 L done $end
$var wire 1 M cmd_ready $end
$var wire 1 N cfg_wr_pulse $end
$var wire 1 O busy $end
$var reg 8 P adata_reg [7:0] $end
$var reg 1 Q adata_valid $end
$var reg 8 R bdata_reg [7:0] $end
$var reg 1 S bdata_valid $end
$var reg 64 T cfg_shift_reg [63:0] $end
$scope module u_tpu $end
$var wire 4 U activ_addr [3:0] $end
$var wire 8 V activ_data [7:0] $end
$var wire 1 9 activ_load_en $end
$var wire 1 1 clk $end
$var wire 32 W cmd_arg [31:0] $end
$var wire 3 X cmd_opcode [2:0] $end
$var wire 1 = cmd_valid $end
$var wire 8 Y leaky_slope [7:0] $end
$var wire 8 Z out_addr [7:0] $end
$var wire 1 J out_valid $end
$var wire 16 [ quant_scale [15:0] $end
$var wire 8 \ quant_shift [7:0] $end
$var wire 1 3 rst_n $end
$var wire 4 ] weight_addr [3:0] $end
$var wire 8 ^ weight_data [7:0] $end
$var wire 1 F weight_load_en $end
$var wire 1 _ skew_enable $end
$var wire 1 ` sa_load_weight $end
$var wire 1 a sa_enable $end
$var wire 1 b sa_clear_accum $end
$var wire 1 K interrupt $end
$var wire 3 c fsm_state [2:0] $end
$var wire 1 d drain_enable $end
$var wire 1 L done $end
$var wire 1 M cmd_ready $end
$var wire 1 O busy $end
$var wire 1 e buf_load_en $end
$var wire 8 f buf_addr [7:0] $end
$var wire 2 g act_type [1:0] $end
$var wire 1 h act_enable $end
$var wire 1 i act_done $end
$var reg 1 j out_valid_reg $end
$scope begin row_select[0] $end
$upscope $end
$scope begin row_select[1] $end
$upscope $end
$scope begin row_select[2] $end
$upscope $end
$scope begin row_select[3] $end
$upscope $end
$scope begin row_select[4] $end
$upscope $end
$scope begin row_select[5] $end
$upscope $end
$scope begin row_select[6] $end
$upscope $end
$scope begin row_select[7] $end
$upscope $end
$scope module u_activ_buffer $end
$var wire 1 1 clk $end
$var wire 4 k load_addr [3:0] $end
$var wire 8 l load_data [7:0] $end
$var wire 1 m load_en $end
$var wire 1 3 rst_n $end
$var wire 1 a enable $end
$var integer 32 n i [31:0] $end
$var integer 32 o idx [31:0] $end
$scope module u_skew $end
$var wire 1 1 clk $end
$var wire 1 3 rst_n $end
$var wire 1 a enable $end
$scope begin skew_rows[0] $end
$scope begin delay_stages[1] $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[1] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[2] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[3] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[4] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[5] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[6] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[7] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$scope module u_activ_skew $end
$var wire 1 1 clk $end
$var wire 1 3 rst_n $end
$var wire 1 _ enable $end
$scope begin skew_rows[0] $end
$scope begin delay_stages[1] $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[1] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[2] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[3] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[4] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[5] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[6] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[7] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$scope module u_activation_unit $end
$var wire 1 1 clk $end
$var wire 1 i done $end
$var wire 8 p leaky_slope [7:0] $end
$var wire 16 q quant_scale [15:0] $end
$var wire 8 r quant_shift [7:0] $end
$var wire 1 3 rst_n $end
$var wire 1 s signed_out $end
$var wire 1 h enable $end
$var wire 2 t act_type [1:0] $end
$var reg 1 u done_reg $end
$scope begin activation_lanes[0] $end
$var wire 32 v accum_signed [31:0] $end
$var wire 48 w scale_result [47:0] $end
$var wire 48 x scale_mult [47:0] $end
$var wire 40 y leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[1] $end
$var wire 32 z accum_signed [31:0] $end
$var wire 48 { scale_result [47:0] $end
$var wire 48 | scale_mult [47:0] $end
$var wire 40 } leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[2] $end
$var wire 32 ~ accum_signed [31:0] $end
$var wire 48 !" scale_result [47:0] $end
$var wire 48 "" scale_mult [47:0] $end
$var wire 40 #" leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[3] $end
$var wire 32 $" accum_signed [31:0] $end
$var wire 48 %" scale_result [47:0] $end
$var wire 48 &" scale_mult [47:0] $end
$var wire 40 '" leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[4] $end
$var wire 32 (" accum_signed [31:0] $end
$var wire 48 )" scale_result [47:0] $end
$var wire 48 *" scale_mult [47:0] $end
$var wire 40 +" leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[5] $end
$var wire 32 ," accum_signed [31:0] $end
$var wire 48 -" scale_result [47:0] $end
$var wire 48 ." scale_mult [47:0] $end
$var wire 40 /" leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[6] $end
$var wire 32 0" accum_signed [31:0] $end
$var wire 48 1" scale_result [47:0] $end
$var wire 48 2" scale_mult [47:0] $end
$var wire 40 3" leaky_mult [39:0] $end
$upscope $end
$scope begin activation_lanes[7] $end
$var wire 32 4" accum_signed [31:0] $end
$var wire 48 5" scale_result [47:0] $end
$var wire 48 6" scale_mult [47:0] $end
$var wire 40 7" leaky_mult [39:0] $end
$upscope $end
$upscope $end
$scope module u_control_fsm $end
$var wire 1 e buf_load_en $end
$var wire 1 1 clk $end
$var wire 32 8" cmd_arg [31:0] $end
$var wire 3 9" cmd_opcode [2:0] $end
$var wire 1 = cmd_valid $end
$var wire 1 L done_pulse $end
$var wire 3 :" fsm_state [2:0] $end
$var wire 1 K interrupt $end
$var wire 1 3 rst_n $end
$var wire 1 _ skew_enable $end
$var wire 1 ` sa_load_weight $end
$var wire 1 a sa_enable $end
$var wire 1 b sa_clear_accum $end
$var wire 1 d drain_enable $end
$var wire 1 M cmd_ready $end
$var wire 1 O busy $end
$var wire 8 ;" buf_addr [7:0] $end
$var wire 2 <" act_type [1:0] $end
$var wire 1 h act_enable $end
$var reg 1 M cmd_ready_reg $end
$var reg 8 =" cycle_count [7:0] $end
$var reg 1 >" done_pulse_reg $end
$var reg 8 ?" matrix_size [7:0] $end
$var reg 3 @" next_state [2:0] $end
$var reg 3 A" state_reg [2:0] $end
$upscope $end
$scope module u_systolic_array $end
$var wire 1 b clear_accum $end
$var wire 1 1 clk $end
$var wire 1 a enable $end
$var wire 1 ` load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 64 C" pe_load_weight [63:0] $end
$var wire 64 D" pe_enable [63:0] $end
$var wire 64 E" pe_clear_accum [63:0] $end
$scope begin pe_rows[0] $end
$scope begin pe_cols[0] $end
$var wire 8 F" pe_act_in [7:0] $end
$var wire 8 G" pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 H" act_in_west [7:0] $end
$var wire 8 I" act_out_east [7:0] $end
$var wire 1 J" clear_accum $end
$var wire 1 1 clk $end
$var wire 1 K" enable $end
$var wire 1 L" load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 M" weight_in_north [7:0] $end
$var wire 8 N" weight_out_south [7:0] $end
$var wire 16 O" mult_result_signed [15:0] $end
$var wire 16 P" mult_result_raw [15:0] $end
$var wire 32 Q" mult_result_extended [31:0] $end
$var wire 32 R" accum_out [31:0] $end
$var reg 32 S" accum_reg [31:0] $end
$var reg 8 T" act_delay [7:0] $end
$var reg 8 U" weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 V" pe_act_in [7:0] $end
$var wire 8 W" pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 X" act_in_west [7:0] $end
$var wire 8 Y" act_out_east [7:0] $end
$var wire 1 Z" clear_accum $end
$var wire 1 1 clk $end
$var wire 1 [" enable $end
$var wire 1 \" load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 ]" weight_in_north [7:0] $end
$var wire 8 ^" weight_out_south [7:0] $end
$var wire 16 _" mult_result_signed [15:0] $end
$var wire 16 `" mult_result_raw [15:0] $end
$var wire 32 a" mult_result_extended [31:0] $end
$var wire 32 b" accum_out [31:0] $end
$var reg 32 c" accum_reg [31:0] $end
$var reg 8 d" act_delay [7:0] $end
$var reg 8 e" weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 f" pe_act_in [7:0] $end
$var wire 8 g" pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 h" act_in_west [7:0] $end
$var wire 8 i" act_out_east [7:0] $end
$var wire 1 j" clear_accum $end
$var wire 1 1 clk $end
$var wire 1 k" enable $end
$var wire 1 l" load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 m" weight_in_north [7:0] $end
$var wire 8 n" weight_out_south [7:0] $end
$var wire 16 o" mult_result_signed [15:0] $end
$var wire 16 p" mult_result_raw [15:0] $end
$var wire 32 q" mult_result_extended [31:0] $end
$var wire 32 r" accum_out [31:0] $end
$var reg 32 s" accum_reg [31:0] $end
$var reg 8 t" act_delay [7:0] $end
$var reg 8 u" weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 v" pe_act_in [7:0] $end
$var wire 8 w" pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 x" act_in_west [7:0] $end
$var wire 8 y" act_out_east [7:0] $end
$var wire 1 z" clear_accum $end
$var wire 1 1 clk $end
$var wire 1 {" enable $end
$var wire 1 |" load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 }" weight_in_north [7:0] $end
$var wire 8 ~" weight_out_south [7:0] $end
$var wire 16 !# mult_result_signed [15:0] $end
$var wire 16 "# mult_result_raw [15:0] $end
$var wire 32 ## mult_result_extended [31:0] $end
$var wire 32 $# accum_out [31:0] $end
$var reg 32 %# accum_reg [31:0] $end
$var reg 8 &# act_delay [7:0] $end
$var reg 8 '# weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 (# pe_act_in [7:0] $end
$var wire 8 )# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 *# act_in_west [7:0] $end
$var wire 8 +# act_out_east [7:0] $end
$var wire 1 ,# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 -# enable $end
$var wire 1 .# load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 /# weight_in_north [7:0] $end
$var wire 8 0# weight_out_south [7:0] $end
$var wire 16 1# mult_result_signed [15:0] $end
$var wire 16 2# mult_result_raw [15:0] $end
$var wire 32 3# mult_result_extended [31:0] $end
$var wire 32 4# accum_out [31:0] $end
$var reg 32 5# accum_reg [31:0] $end
$var reg 8 6# act_delay [7:0] $end
$var reg 8 7# weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 8# pe_act_in [7:0] $end
$var wire 8 9# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 :# act_in_west [7:0] $end
$var wire 8 ;# act_out_east [7:0] $end
$var wire 1 <# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 =# enable $end
$var wire 1 ># load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 ?# weight_in_north [7:0] $end
$var wire 8 @# weight_out_south [7:0] $end
$var wire 16 A# mult_result_signed [15:0] $end
$var wire 16 B# mult_result_raw [15:0] $end
$var wire 32 C# mult_result_extended [31:0] $end
$var wire 32 D# accum_out [31:0] $end
$var reg 32 E# accum_reg [31:0] $end
$var reg 8 F# act_delay [7:0] $end
$var reg 8 G# weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 H# pe_act_in [7:0] $end
$var wire 8 I# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 J# act_in_west [7:0] $end
$var wire 8 K# act_out_east [7:0] $end
$var wire 1 L# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 M# enable $end
$var wire 1 N# load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 O# weight_in_north [7:0] $end
$var wire 8 P# weight_out_south [7:0] $end
$var wire 16 Q# mult_result_signed [15:0] $end
$var wire 16 R# mult_result_raw [15:0] $end
$var wire 32 S# mult_result_extended [31:0] $end
$var wire 32 T# accum_out [31:0] $end
$var reg 32 U# accum_reg [31:0] $end
$var reg 8 V# act_delay [7:0] $end
$var reg 8 W# weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 X# pe_act_in [7:0] $end
$var wire 8 Y# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 Z# act_in_west [7:0] $end
$var wire 8 [# act_out_east [7:0] $end
$var wire 1 \# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 ]# enable $end
$var wire 1 ^# load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 _# weight_in_north [7:0] $end
$var wire 8 `# weight_out_south [7:0] $end
$var wire 16 a# mult_result_signed [15:0] $end
$var wire 16 b# mult_result_raw [15:0] $end
$var wire 32 c# mult_result_extended [31:0] $end
$var wire 32 d# accum_out [31:0] $end
$var reg 32 e# accum_reg [31:0] $end
$var reg 8 f# act_delay [7:0] $end
$var reg 8 g# weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[1] $end
$scope begin pe_cols[0] $end
$var wire 8 h# pe_act_in [7:0] $end
$var wire 8 i# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 j# act_in_west [7:0] $end
$var wire 8 k# act_out_east [7:0] $end
$var wire 1 l# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 m# enable $end
$var wire 1 n# load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 o# weight_in_north [7:0] $end
$var wire 8 p# weight_out_south [7:0] $end
$var wire 16 q# mult_result_signed [15:0] $end
$var wire 16 r# mult_result_raw [15:0] $end
$var wire 32 s# mult_result_extended [31:0] $end
$var wire 32 t# accum_out [31:0] $end
$var reg 32 u# accum_reg [31:0] $end
$var reg 8 v# act_delay [7:0] $end
$var reg 8 w# weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 x# pe_act_in [7:0] $end
$var wire 8 y# pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 z# act_in_west [7:0] $end
$var wire 8 {# act_out_east [7:0] $end
$var wire 1 |# clear_accum $end
$var wire 1 1 clk $end
$var wire 1 }# enable $end
$var wire 1 ~# load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 !$ weight_in_north [7:0] $end
$var wire 8 "$ weight_out_south [7:0] $end
$var wire 16 #$ mult_result_signed [15:0] $end
$var wire 16 $$ mult_result_raw [15:0] $end
$var wire 32 %$ mult_result_extended [31:0] $end
$var wire 32 &$ accum_out [31:0] $end
$var reg 32 '$ accum_reg [31:0] $end
$var reg 8 ($ act_delay [7:0] $end
$var reg 8 )$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 *$ pe_act_in [7:0] $end
$var wire 8 +$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 ,$ act_in_west [7:0] $end
$var wire 8 -$ act_out_east [7:0] $end
$var wire 1 .$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 /$ enable $end
$var wire 1 0$ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 1$ weight_in_north [7:0] $end
$var wire 8 2$ weight_out_south [7:0] $end
$var wire 16 3$ mult_result_signed [15:0] $end
$var wire 16 4$ mult_result_raw [15:0] $end
$var wire 32 5$ mult_result_extended [31:0] $end
$var wire 32 6$ accum_out [31:0] $end
$var reg 32 7$ accum_reg [31:0] $end
$var reg 8 8$ act_delay [7:0] $end
$var reg 8 9$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 :$ pe_act_in [7:0] $end
$var wire 8 ;$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 <$ act_in_west [7:0] $end
$var wire 8 =$ act_out_east [7:0] $end
$var wire 1 >$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 ?$ enable $end
$var wire 1 @$ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 A$ weight_in_north [7:0] $end
$var wire 8 B$ weight_out_south [7:0] $end
$var wire 16 C$ mult_result_signed [15:0] $end
$var wire 16 D$ mult_result_raw [15:0] $end
$var wire 32 E$ mult_result_extended [31:0] $end
$var wire 32 F$ accum_out [31:0] $end
$var reg 32 G$ accum_reg [31:0] $end
$var reg 8 H$ act_delay [7:0] $end
$var reg 8 I$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 J$ pe_act_in [7:0] $end
$var wire 8 K$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 L$ act_in_west [7:0] $end
$var wire 8 M$ act_out_east [7:0] $end
$var wire 1 N$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 O$ enable $end
$var wire 1 P$ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 Q$ weight_in_north [7:0] $end
$var wire 8 R$ weight_out_south [7:0] $end
$var wire 16 S$ mult_result_signed [15:0] $end
$var wire 16 T$ mult_result_raw [15:0] $end
$var wire 32 U$ mult_result_extended [31:0] $end
$var wire 32 V$ accum_out [31:0] $end
$var reg 32 W$ accum_reg [31:0] $end
$var reg 8 X$ act_delay [7:0] $end
$var reg 8 Y$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 Z$ pe_act_in [7:0] $end
$var wire 8 [$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 \$ act_in_west [7:0] $end
$var wire 8 ]$ act_out_east [7:0] $end
$var wire 1 ^$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 _$ enable $end
$var wire 1 `$ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 a$ weight_in_north [7:0] $end
$var wire 8 b$ weight_out_south [7:0] $end
$var wire 16 c$ mult_result_signed [15:0] $end
$var wire 16 d$ mult_result_raw [15:0] $end
$var wire 32 e$ mult_result_extended [31:0] $end
$var wire 32 f$ accum_out [31:0] $end
$var reg 32 g$ accum_reg [31:0] $end
$var reg 8 h$ act_delay [7:0] $end
$var reg 8 i$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 j$ pe_act_in [7:0] $end
$var wire 8 k$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 l$ act_in_west [7:0] $end
$var wire 8 m$ act_out_east [7:0] $end
$var wire 1 n$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 o$ enable $end
$var wire 1 p$ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 q$ weight_in_north [7:0] $end
$var wire 8 r$ weight_out_south [7:0] $end
$var wire 16 s$ mult_result_signed [15:0] $end
$var wire 16 t$ mult_result_raw [15:0] $end
$var wire 32 u$ mult_result_extended [31:0] $end
$var wire 32 v$ accum_out [31:0] $end
$var reg 32 w$ accum_reg [31:0] $end
$var reg 8 x$ act_delay [7:0] $end
$var reg 8 y$ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 z$ pe_act_in [7:0] $end
$var wire 8 {$ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 |$ act_in_west [7:0] $end
$var wire 8 }$ act_out_east [7:0] $end
$var wire 1 ~$ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 !% enable $end
$var wire 1 "% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 #% weight_in_north [7:0] $end
$var wire 8 $% weight_out_south [7:0] $end
$var wire 16 %% mult_result_signed [15:0] $end
$var wire 16 &% mult_result_raw [15:0] $end
$var wire 32 '% mult_result_extended [31:0] $end
$var wire 32 (% accum_out [31:0] $end
$var reg 32 )% accum_reg [31:0] $end
$var reg 8 *% act_delay [7:0] $end
$var reg 8 +% weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[2] $end
$scope begin pe_cols[0] $end
$var wire 8 ,% pe_act_in [7:0] $end
$var wire 8 -% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 .% act_in_west [7:0] $end
$var wire 8 /% act_out_east [7:0] $end
$var wire 1 0% clear_accum $end
$var wire 1 1 clk $end
$var wire 1 1% enable $end
$var wire 1 2% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 3% weight_in_north [7:0] $end
$var wire 8 4% weight_out_south [7:0] $end
$var wire 16 5% mult_result_signed [15:0] $end
$var wire 16 6% mult_result_raw [15:0] $end
$var wire 32 7% mult_result_extended [31:0] $end
$var wire 32 8% accum_out [31:0] $end
$var reg 32 9% accum_reg [31:0] $end
$var reg 8 :% act_delay [7:0] $end
$var reg 8 ;% weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 <% pe_act_in [7:0] $end
$var wire 8 =% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 >% act_in_west [7:0] $end
$var wire 8 ?% act_out_east [7:0] $end
$var wire 1 @% clear_accum $end
$var wire 1 1 clk $end
$var wire 1 A% enable $end
$var wire 1 B% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 C% weight_in_north [7:0] $end
$var wire 8 D% weight_out_south [7:0] $end
$var wire 16 E% mult_result_signed [15:0] $end
$var wire 16 F% mult_result_raw [15:0] $end
$var wire 32 G% mult_result_extended [31:0] $end
$var wire 32 H% accum_out [31:0] $end
$var reg 32 I% accum_reg [31:0] $end
$var reg 8 J% act_delay [7:0] $end
$var reg 8 K% weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 L% pe_act_in [7:0] $end
$var wire 8 M% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 N% act_in_west [7:0] $end
$var wire 8 O% act_out_east [7:0] $end
$var wire 1 P% clear_accum $end
$var wire 1 1 clk $end
$var wire 1 Q% enable $end
$var wire 1 R% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 S% weight_in_north [7:0] $end
$var wire 8 T% weight_out_south [7:0] $end
$var wire 16 U% mult_result_signed [15:0] $end
$var wire 16 V% mult_result_raw [15:0] $end
$var wire 32 W% mult_result_extended [31:0] $end
$var wire 32 X% accum_out [31:0] $end
$var reg 32 Y% accum_reg [31:0] $end
$var reg 8 Z% act_delay [7:0] $end
$var reg 8 [% weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 \% pe_act_in [7:0] $end
$var wire 8 ]% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 ^% act_in_west [7:0] $end
$var wire 8 _% act_out_east [7:0] $end
$var wire 1 `% clear_accum $end
$var wire 1 1 clk $end
$var wire 1 a% enable $end
$var wire 1 b% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 c% weight_in_north [7:0] $end
$var wire 8 d% weight_out_south [7:0] $end
$var wire 16 e% mult_result_signed [15:0] $end
$var wire 16 f% mult_result_raw [15:0] $end
$var wire 32 g% mult_result_extended [31:0] $end
$var wire 32 h% accum_out [31:0] $end
$var reg 32 i% accum_reg [31:0] $end
$var reg 8 j% act_delay [7:0] $end
$var reg 8 k% weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 l% pe_act_in [7:0] $end
$var wire 8 m% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 n% act_in_west [7:0] $end
$var wire 8 o% act_out_east [7:0] $end
$var wire 1 p% clear_accum $end
$var wire 1 1 clk $end
$var wire 1 q% enable $end
$var wire 1 r% load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 s% weight_in_north [7:0] $end
$var wire 8 t% weight_out_south [7:0] $end
$var wire 16 u% mult_result_signed [15:0] $end
$var wire 16 v% mult_result_raw [15:0] $end
$var wire 32 w% mult_result_extended [31:0] $end
$var wire 32 x% accum_out [31:0] $end
$var reg 32 y% accum_reg [31:0] $end
$var reg 8 z% act_delay [7:0] $end
$var reg 8 {% weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 |% pe_act_in [7:0] $end
$var wire 8 }% pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 ~% act_in_west [7:0] $end
$var wire 8 !& act_out_east [7:0] $end
$var wire 1 "& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 #& enable $end
$var wire 1 $& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 %& weight_in_north [7:0] $end
$var wire 8 && weight_out_south [7:0] $end
$var wire 16 '& mult_result_signed [15:0] $end
$var wire 16 (& mult_result_raw [15:0] $end
$var wire 32 )& mult_result_extended [31:0] $end
$var wire 32 *& accum_out [31:0] $end
$var reg 32 +& accum_reg [31:0] $end
$var reg 8 ,& act_delay [7:0] $end
$var reg 8 -& weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 .& pe_act_in [7:0] $end
$var wire 8 /& pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 0& act_in_west [7:0] $end
$var wire 8 1& act_out_east [7:0] $end
$var wire 1 2& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 3& enable $end
$var wire 1 4& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 5& weight_in_north [7:0] $end
$var wire 8 6& weight_out_south [7:0] $end
$var wire 16 7& mult_result_signed [15:0] $end
$var wire 16 8& mult_result_raw [15:0] $end
$var wire 32 9& mult_result_extended [31:0] $end
$var wire 32 :& accum_out [31:0] $end
$var reg 32 ;& accum_reg [31:0] $end
$var reg 8 <& act_delay [7:0] $end
$var reg 8 =& weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 >& pe_act_in [7:0] $end
$var wire 8 ?& pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 @& act_in_west [7:0] $end
$var wire 8 A& act_out_east [7:0] $end
$var wire 1 B& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 C& enable $end
$var wire 1 D& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 E& weight_in_north [7:0] $end
$var wire 8 F& weight_out_south [7:0] $end
$var wire 16 G& mult_result_signed [15:0] $end
$var wire 16 H& mult_result_raw [15:0] $end
$var wire 32 I& mult_result_extended [31:0] $end
$var wire 32 J& accum_out [31:0] $end
$var reg 32 K& accum_reg [31:0] $end
$var reg 8 L& act_delay [7:0] $end
$var reg 8 M& weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[3] $end
$scope begin pe_cols[0] $end
$var wire 8 N& pe_act_in [7:0] $end
$var wire 8 O& pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 P& act_in_west [7:0] $end
$var wire 8 Q& act_out_east [7:0] $end
$var wire 1 R& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 S& enable $end
$var wire 1 T& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 U& weight_in_north [7:0] $end
$var wire 8 V& weight_out_south [7:0] $end
$var wire 16 W& mult_result_signed [15:0] $end
$var wire 16 X& mult_result_raw [15:0] $end
$var wire 32 Y& mult_result_extended [31:0] $end
$var wire 32 Z& accum_out [31:0] $end
$var reg 32 [& accum_reg [31:0] $end
$var reg 8 \& act_delay [7:0] $end
$var reg 8 ]& weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 ^& pe_act_in [7:0] $end
$var wire 8 _& pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 `& act_in_west [7:0] $end
$var wire 8 a& act_out_east [7:0] $end
$var wire 1 b& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 c& enable $end
$var wire 1 d& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 e& weight_in_north [7:0] $end
$var wire 8 f& weight_out_south [7:0] $end
$var wire 16 g& mult_result_signed [15:0] $end
$var wire 16 h& mult_result_raw [15:0] $end
$var wire 32 i& mult_result_extended [31:0] $end
$var wire 32 j& accum_out [31:0] $end
$var reg 32 k& accum_reg [31:0] $end
$var reg 8 l& act_delay [7:0] $end
$var reg 8 m& weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 n& pe_act_in [7:0] $end
$var wire 8 o& pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 p& act_in_west [7:0] $end
$var wire 8 q& act_out_east [7:0] $end
$var wire 1 r& clear_accum $end
$var wire 1 1 clk $end
$var wire 1 s& enable $end
$var wire 1 t& load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 u& weight_in_north [7:0] $end
$var wire 8 v& weight_out_south [7:0] $end
$var wire 16 w& mult_result_signed [15:0] $end
$var wire 16 x& mult_result_raw [15:0] $end
$var wire 32 y& mult_result_extended [31:0] $end
$var wire 32 z& accum_out [31:0] $end
$var reg 32 {& accum_reg [31:0] $end
$var reg 8 |& act_delay [7:0] $end
$var reg 8 }& weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 ~& pe_act_in [7:0] $end
$var wire 8 !' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 "' act_in_west [7:0] $end
$var wire 8 #' act_out_east [7:0] $end
$var wire 1 $' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 %' enable $end
$var wire 1 &' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 '' weight_in_north [7:0] $end
$var wire 8 (' weight_out_south [7:0] $end
$var wire 16 )' mult_result_signed [15:0] $end
$var wire 16 *' mult_result_raw [15:0] $end
$var wire 32 +' mult_result_extended [31:0] $end
$var wire 32 ,' accum_out [31:0] $end
$var reg 32 -' accum_reg [31:0] $end
$var reg 8 .' act_delay [7:0] $end
$var reg 8 /' weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 0' pe_act_in [7:0] $end
$var wire 8 1' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 2' act_in_west [7:0] $end
$var wire 8 3' act_out_east [7:0] $end
$var wire 1 4' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 5' enable $end
$var wire 1 6' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 7' weight_in_north [7:0] $end
$var wire 8 8' weight_out_south [7:0] $end
$var wire 16 9' mult_result_signed [15:0] $end
$var wire 16 :' mult_result_raw [15:0] $end
$var wire 32 ;' mult_result_extended [31:0] $end
$var wire 32 <' accum_out [31:0] $end
$var reg 32 =' accum_reg [31:0] $end
$var reg 8 >' act_delay [7:0] $end
$var reg 8 ?' weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 @' pe_act_in [7:0] $end
$var wire 8 A' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 B' act_in_west [7:0] $end
$var wire 8 C' act_out_east [7:0] $end
$var wire 1 D' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 E' enable $end
$var wire 1 F' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 G' weight_in_north [7:0] $end
$var wire 8 H' weight_out_south [7:0] $end
$var wire 16 I' mult_result_signed [15:0] $end
$var wire 16 J' mult_result_raw [15:0] $end
$var wire 32 K' mult_result_extended [31:0] $end
$var wire 32 L' accum_out [31:0] $end
$var reg 32 M' accum_reg [31:0] $end
$var reg 8 N' act_delay [7:0] $end
$var reg 8 O' weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 P' pe_act_in [7:0] $end
$var wire 8 Q' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 R' act_in_west [7:0] $end
$var wire 8 S' act_out_east [7:0] $end
$var wire 1 T' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 U' enable $end
$var wire 1 V' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 W' weight_in_north [7:0] $end
$var wire 8 X' weight_out_south [7:0] $end
$var wire 16 Y' mult_result_signed [15:0] $end
$var wire 16 Z' mult_result_raw [15:0] $end
$var wire 32 [' mult_result_extended [31:0] $end
$var wire 32 \' accum_out [31:0] $end
$var reg 32 ]' accum_reg [31:0] $end
$var reg 8 ^' act_delay [7:0] $end
$var reg 8 _' weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 `' pe_act_in [7:0] $end
$var wire 8 a' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 b' act_in_west [7:0] $end
$var wire 8 c' act_out_east [7:0] $end
$var wire 1 d' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 e' enable $end
$var wire 1 f' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 g' weight_in_north [7:0] $end
$var wire 8 h' weight_out_south [7:0] $end
$var wire 16 i' mult_result_signed [15:0] $end
$var wire 16 j' mult_result_raw [15:0] $end
$var wire 32 k' mult_result_extended [31:0] $end
$var wire 32 l' accum_out [31:0] $end
$var reg 32 m' accum_reg [31:0] $end
$var reg 8 n' act_delay [7:0] $end
$var reg 8 o' weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[4] $end
$scope begin pe_cols[0] $end
$var wire 8 p' pe_act_in [7:0] $end
$var wire 8 q' pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 r' act_in_west [7:0] $end
$var wire 8 s' act_out_east [7:0] $end
$var wire 1 t' clear_accum $end
$var wire 1 1 clk $end
$var wire 1 u' enable $end
$var wire 1 v' load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 w' weight_in_north [7:0] $end
$var wire 8 x' weight_out_south [7:0] $end
$var wire 16 y' mult_result_signed [15:0] $end
$var wire 16 z' mult_result_raw [15:0] $end
$var wire 32 {' mult_result_extended [31:0] $end
$var wire 32 |' accum_out [31:0] $end
$var reg 32 }' accum_reg [31:0] $end
$var reg 8 ~' act_delay [7:0] $end
$var reg 8 !( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 "( pe_act_in [7:0] $end
$var wire 8 #( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 $( act_in_west [7:0] $end
$var wire 8 %( act_out_east [7:0] $end
$var wire 1 &( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 '( enable $end
$var wire 1 (( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 )( weight_in_north [7:0] $end
$var wire 8 *( weight_out_south [7:0] $end
$var wire 16 +( mult_result_signed [15:0] $end
$var wire 16 ,( mult_result_raw [15:0] $end
$var wire 32 -( mult_result_extended [31:0] $end
$var wire 32 .( accum_out [31:0] $end
$var reg 32 /( accum_reg [31:0] $end
$var reg 8 0( act_delay [7:0] $end
$var reg 8 1( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 2( pe_act_in [7:0] $end
$var wire 8 3( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 4( act_in_west [7:0] $end
$var wire 8 5( act_out_east [7:0] $end
$var wire 1 6( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 7( enable $end
$var wire 1 8( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 9( weight_in_north [7:0] $end
$var wire 8 :( weight_out_south [7:0] $end
$var wire 16 ;( mult_result_signed [15:0] $end
$var wire 16 <( mult_result_raw [15:0] $end
$var wire 32 =( mult_result_extended [31:0] $end
$var wire 32 >( accum_out [31:0] $end
$var reg 32 ?( accum_reg [31:0] $end
$var reg 8 @( act_delay [7:0] $end
$var reg 8 A( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 B( pe_act_in [7:0] $end
$var wire 8 C( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 D( act_in_west [7:0] $end
$var wire 8 E( act_out_east [7:0] $end
$var wire 1 F( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 G( enable $end
$var wire 1 H( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 I( weight_in_north [7:0] $end
$var wire 8 J( weight_out_south [7:0] $end
$var wire 16 K( mult_result_signed [15:0] $end
$var wire 16 L( mult_result_raw [15:0] $end
$var wire 32 M( mult_result_extended [31:0] $end
$var wire 32 N( accum_out [31:0] $end
$var reg 32 O( accum_reg [31:0] $end
$var reg 8 P( act_delay [7:0] $end
$var reg 8 Q( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 R( pe_act_in [7:0] $end
$var wire 8 S( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 T( act_in_west [7:0] $end
$var wire 8 U( act_out_east [7:0] $end
$var wire 1 V( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 W( enable $end
$var wire 1 X( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 Y( weight_in_north [7:0] $end
$var wire 8 Z( weight_out_south [7:0] $end
$var wire 16 [( mult_result_signed [15:0] $end
$var wire 16 \( mult_result_raw [15:0] $end
$var wire 32 ]( mult_result_extended [31:0] $end
$var wire 32 ^( accum_out [31:0] $end
$var reg 32 _( accum_reg [31:0] $end
$var reg 8 `( act_delay [7:0] $end
$var reg 8 a( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 b( pe_act_in [7:0] $end
$var wire 8 c( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 d( act_in_west [7:0] $end
$var wire 8 e( act_out_east [7:0] $end
$var wire 1 f( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 g( enable $end
$var wire 1 h( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 i( weight_in_north [7:0] $end
$var wire 8 j( weight_out_south [7:0] $end
$var wire 16 k( mult_result_signed [15:0] $end
$var wire 16 l( mult_result_raw [15:0] $end
$var wire 32 m( mult_result_extended [31:0] $end
$var wire 32 n( accum_out [31:0] $end
$var reg 32 o( accum_reg [31:0] $end
$var reg 8 p( act_delay [7:0] $end
$var reg 8 q( weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 r( pe_act_in [7:0] $end
$var wire 8 s( pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 t( act_in_west [7:0] $end
$var wire 8 u( act_out_east [7:0] $end
$var wire 1 v( clear_accum $end
$var wire 1 1 clk $end
$var wire 1 w( enable $end
$var wire 1 x( load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 y( weight_in_north [7:0] $end
$var wire 8 z( weight_out_south [7:0] $end
$var wire 16 {( mult_result_signed [15:0] $end
$var wire 16 |( mult_result_raw [15:0] $end
$var wire 32 }( mult_result_extended [31:0] $end
$var wire 32 ~( accum_out [31:0] $end
$var reg 32 !) accum_reg [31:0] $end
$var reg 8 ") act_delay [7:0] $end
$var reg 8 #) weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 $) pe_act_in [7:0] $end
$var wire 8 %) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 &) act_in_west [7:0] $end
$var wire 8 ') act_out_east [7:0] $end
$var wire 1 () clear_accum $end
$var wire 1 1 clk $end
$var wire 1 )) enable $end
$var wire 1 *) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 +) weight_in_north [7:0] $end
$var wire 8 ,) weight_out_south [7:0] $end
$var wire 16 -) mult_result_signed [15:0] $end
$var wire 16 .) mult_result_raw [15:0] $end
$var wire 32 /) mult_result_extended [31:0] $end
$var wire 32 0) accum_out [31:0] $end
$var reg 32 1) accum_reg [31:0] $end
$var reg 8 2) act_delay [7:0] $end
$var reg 8 3) weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[5] $end
$scope begin pe_cols[0] $end
$var wire 8 4) pe_act_in [7:0] $end
$var wire 8 5) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 6) act_in_west [7:0] $end
$var wire 8 7) act_out_east [7:0] $end
$var wire 1 8) clear_accum $end
$var wire 1 1 clk $end
$var wire 1 9) enable $end
$var wire 1 :) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 ;) weight_in_north [7:0] $end
$var wire 8 <) weight_out_south [7:0] $end
$var wire 16 =) mult_result_signed [15:0] $end
$var wire 16 >) mult_result_raw [15:0] $end
$var wire 32 ?) mult_result_extended [31:0] $end
$var wire 32 @) accum_out [31:0] $end
$var reg 32 A) accum_reg [31:0] $end
$var reg 8 B) act_delay [7:0] $end
$var reg 8 C) weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 D) pe_act_in [7:0] $end
$var wire 8 E) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 F) act_in_west [7:0] $end
$var wire 8 G) act_out_east [7:0] $end
$var wire 1 H) clear_accum $end
$var wire 1 1 clk $end
$var wire 1 I) enable $end
$var wire 1 J) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 K) weight_in_north [7:0] $end
$var wire 8 L) weight_out_south [7:0] $end
$var wire 16 M) mult_result_signed [15:0] $end
$var wire 16 N) mult_result_raw [15:0] $end
$var wire 32 O) mult_result_extended [31:0] $end
$var wire 32 P) accum_out [31:0] $end
$var reg 32 Q) accum_reg [31:0] $end
$var reg 8 R) act_delay [7:0] $end
$var reg 8 S) weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 T) pe_act_in [7:0] $end
$var wire 8 U) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 V) act_in_west [7:0] $end
$var wire 8 W) act_out_east [7:0] $end
$var wire 1 X) clear_accum $end
$var wire 1 1 clk $end
$var wire 1 Y) enable $end
$var wire 1 Z) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 [) weight_in_north [7:0] $end
$var wire 8 \) weight_out_south [7:0] $end
$var wire 16 ]) mult_result_signed [15:0] $end
$var wire 16 ^) mult_result_raw [15:0] $end
$var wire 32 _) mult_result_extended [31:0] $end
$var wire 32 `) accum_out [31:0] $end
$var reg 32 a) accum_reg [31:0] $end
$var reg 8 b) act_delay [7:0] $end
$var reg 8 c) weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 d) pe_act_in [7:0] $end
$var wire 8 e) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 f) act_in_west [7:0] $end
$var wire 8 g) act_out_east [7:0] $end
$var wire 1 h) clear_accum $end
$var wire 1 1 clk $end
$var wire 1 i) enable $end
$var wire 1 j) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 k) weight_in_north [7:0] $end
$var wire 8 l) weight_out_south [7:0] $end
$var wire 16 m) mult_result_signed [15:0] $end
$var wire 16 n) mult_result_raw [15:0] $end
$var wire 32 o) mult_result_extended [31:0] $end
$var wire 32 p) accum_out [31:0] $end
$var reg 32 q) accum_reg [31:0] $end
$var reg 8 r) act_delay [7:0] $end
$var reg 8 s) weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 t) pe_act_in [7:0] $end
$var wire 8 u) pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 v) act_in_west [7:0] $end
$var wire 8 w) act_out_east [7:0] $end
$var wire 1 x) clear_accum $end
$var wire 1 1 clk $end
$var wire 1 y) enable $end
$var wire 1 z) load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 {) weight_in_north [7:0] $end
$var wire 8 |) weight_out_south [7:0] $end
$var wire 16 }) mult_result_signed [15:0] $end
$var wire 16 ~) mult_result_raw [15:0] $end
$var wire 32 !* mult_result_extended [31:0] $end
$var wire 32 "* accum_out [31:0] $end
$var reg 32 #* accum_reg [31:0] $end
$var reg 8 $* act_delay [7:0] $end
$var reg 8 %* weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 &* pe_act_in [7:0] $end
$var wire 8 '* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 (* act_in_west [7:0] $end
$var wire 8 )* act_out_east [7:0] $end
$var wire 1 ** clear_accum $end
$var wire 1 1 clk $end
$var wire 1 +* enable $end
$var wire 1 ,* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 -* weight_in_north [7:0] $end
$var wire 8 .* weight_out_south [7:0] $end
$var wire 16 /* mult_result_signed [15:0] $end
$var wire 16 0* mult_result_raw [15:0] $end
$var wire 32 1* mult_result_extended [31:0] $end
$var wire 32 2* accum_out [31:0] $end
$var reg 32 3* accum_reg [31:0] $end
$var reg 8 4* act_delay [7:0] $end
$var reg 8 5* weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 6* pe_act_in [7:0] $end
$var wire 8 7* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 8* act_in_west [7:0] $end
$var wire 8 9* act_out_east [7:0] $end
$var wire 1 :* clear_accum $end
$var wire 1 1 clk $end
$var wire 1 ;* enable $end
$var wire 1 <* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 =* weight_in_north [7:0] $end
$var wire 8 >* weight_out_south [7:0] $end
$var wire 16 ?* mult_result_signed [15:0] $end
$var wire 16 @* mult_result_raw [15:0] $end
$var wire 32 A* mult_result_extended [31:0] $end
$var wire 32 B* accum_out [31:0] $end
$var reg 32 C* accum_reg [31:0] $end
$var reg 8 D* act_delay [7:0] $end
$var reg 8 E* weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 F* pe_act_in [7:0] $end
$var wire 8 G* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 H* act_in_west [7:0] $end
$var wire 8 I* act_out_east [7:0] $end
$var wire 1 J* clear_accum $end
$var wire 1 1 clk $end
$var wire 1 K* enable $end
$var wire 1 L* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 M* weight_in_north [7:0] $end
$var wire 8 N* weight_out_south [7:0] $end
$var wire 16 O* mult_result_signed [15:0] $end
$var wire 16 P* mult_result_raw [15:0] $end
$var wire 32 Q* mult_result_extended [31:0] $end
$var wire 32 R* accum_out [31:0] $end
$var reg 32 S* accum_reg [31:0] $end
$var reg 8 T* act_delay [7:0] $end
$var reg 8 U* weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[6] $end
$scope begin pe_cols[0] $end
$var wire 8 V* pe_act_in [7:0] $end
$var wire 8 W* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 X* act_in_west [7:0] $end
$var wire 8 Y* act_out_east [7:0] $end
$var wire 1 Z* clear_accum $end
$var wire 1 1 clk $end
$var wire 1 [* enable $end
$var wire 1 \* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 ]* weight_in_north [7:0] $end
$var wire 8 ^* weight_out_south [7:0] $end
$var wire 16 _* mult_result_signed [15:0] $end
$var wire 16 `* mult_result_raw [15:0] $end
$var wire 32 a* mult_result_extended [31:0] $end
$var wire 32 b* accum_out [31:0] $end
$var reg 32 c* accum_reg [31:0] $end
$var reg 8 d* act_delay [7:0] $end
$var reg 8 e* weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 f* pe_act_in [7:0] $end
$var wire 8 g* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 h* act_in_west [7:0] $end
$var wire 8 i* act_out_east [7:0] $end
$var wire 1 j* clear_accum $end
$var wire 1 1 clk $end
$var wire 1 k* enable $end
$var wire 1 l* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 m* weight_in_north [7:0] $end
$var wire 8 n* weight_out_south [7:0] $end
$var wire 16 o* mult_result_signed [15:0] $end
$var wire 16 p* mult_result_raw [15:0] $end
$var wire 32 q* mult_result_extended [31:0] $end
$var wire 32 r* accum_out [31:0] $end
$var reg 32 s* accum_reg [31:0] $end
$var reg 8 t* act_delay [7:0] $end
$var reg 8 u* weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 v* pe_act_in [7:0] $end
$var wire 8 w* pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 x* act_in_west [7:0] $end
$var wire 8 y* act_out_east [7:0] $end
$var wire 1 z* clear_accum $end
$var wire 1 1 clk $end
$var wire 1 {* enable $end
$var wire 1 |* load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 }* weight_in_north [7:0] $end
$var wire 8 ~* weight_out_south [7:0] $end
$var wire 16 !+ mult_result_signed [15:0] $end
$var wire 16 "+ mult_result_raw [15:0] $end
$var wire 32 #+ mult_result_extended [31:0] $end
$var wire 32 $+ accum_out [31:0] $end
$var reg 32 %+ accum_reg [31:0] $end
$var reg 8 &+ act_delay [7:0] $end
$var reg 8 '+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 (+ pe_act_in [7:0] $end
$var wire 8 )+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 *+ act_in_west [7:0] $end
$var wire 8 ++ act_out_east [7:0] $end
$var wire 1 ,+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 -+ enable $end
$var wire 1 .+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 /+ weight_in_north [7:0] $end
$var wire 8 0+ weight_out_south [7:0] $end
$var wire 16 1+ mult_result_signed [15:0] $end
$var wire 16 2+ mult_result_raw [15:0] $end
$var wire 32 3+ mult_result_extended [31:0] $end
$var wire 32 4+ accum_out [31:0] $end
$var reg 32 5+ accum_reg [31:0] $end
$var reg 8 6+ act_delay [7:0] $end
$var reg 8 7+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 8+ pe_act_in [7:0] $end
$var wire 8 9+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 :+ act_in_west [7:0] $end
$var wire 8 ;+ act_out_east [7:0] $end
$var wire 1 <+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 =+ enable $end
$var wire 1 >+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 ?+ weight_in_north [7:0] $end
$var wire 8 @+ weight_out_south [7:0] $end
$var wire 16 A+ mult_result_signed [15:0] $end
$var wire 16 B+ mult_result_raw [15:0] $end
$var wire 32 C+ mult_result_extended [31:0] $end
$var wire 32 D+ accum_out [31:0] $end
$var reg 32 E+ accum_reg [31:0] $end
$var reg 8 F+ act_delay [7:0] $end
$var reg 8 G+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 H+ pe_act_in [7:0] $end
$var wire 8 I+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 J+ act_in_west [7:0] $end
$var wire 8 K+ act_out_east [7:0] $end
$var wire 1 L+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 M+ enable $end
$var wire 1 N+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 O+ weight_in_north [7:0] $end
$var wire 8 P+ weight_out_south [7:0] $end
$var wire 16 Q+ mult_result_signed [15:0] $end
$var wire 16 R+ mult_result_raw [15:0] $end
$var wire 32 S+ mult_result_extended [31:0] $end
$var wire 32 T+ accum_out [31:0] $end
$var reg 32 U+ accum_reg [31:0] $end
$var reg 8 V+ act_delay [7:0] $end
$var reg 8 W+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 X+ pe_act_in [7:0] $end
$var wire 8 Y+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 Z+ act_in_west [7:0] $end
$var wire 8 [+ act_out_east [7:0] $end
$var wire 1 \+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 ]+ enable $end
$var wire 1 ^+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 _+ weight_in_north [7:0] $end
$var wire 8 `+ weight_out_south [7:0] $end
$var wire 16 a+ mult_result_signed [15:0] $end
$var wire 16 b+ mult_result_raw [15:0] $end
$var wire 32 c+ mult_result_extended [31:0] $end
$var wire 32 d+ accum_out [31:0] $end
$var reg 32 e+ accum_reg [31:0] $end
$var reg 8 f+ act_delay [7:0] $end
$var reg 8 g+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 h+ pe_act_in [7:0] $end
$var wire 8 i+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 j+ act_in_west [7:0] $end
$var wire 8 k+ act_out_east [7:0] $end
$var wire 1 l+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 m+ enable $end
$var wire 1 n+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 o+ weight_in_north [7:0] $end
$var wire 8 p+ weight_out_south [7:0] $end
$var wire 16 q+ mult_result_signed [15:0] $end
$var wire 16 r+ mult_result_raw [15:0] $end
$var wire 32 s+ mult_result_extended [31:0] $end
$var wire 32 t+ accum_out [31:0] $end
$var reg 32 u+ accum_reg [31:0] $end
$var reg 8 v+ act_delay [7:0] $end
$var reg 8 w+ weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$scope begin pe_rows[7] $end
$scope begin pe_cols[0] $end
$var wire 8 x+ pe_act_in [7:0] $end
$var wire 8 y+ pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 z+ act_in_west [7:0] $end
$var wire 8 {+ act_out_east [7:0] $end
$var wire 1 |+ clear_accum $end
$var wire 1 1 clk $end
$var wire 1 }+ enable $end
$var wire 1 ~+ load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 !, weight_in_north [7:0] $end
$var wire 8 ", weight_out_south [7:0] $end
$var wire 16 #, mult_result_signed [15:0] $end
$var wire 16 $, mult_result_raw [15:0] $end
$var wire 32 %, mult_result_extended [31:0] $end
$var wire 32 &, accum_out [31:0] $end
$var reg 32 ', accum_reg [31:0] $end
$var reg 8 (, act_delay [7:0] $end
$var reg 8 ), weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[1] $end
$var wire 8 *, pe_act_in [7:0] $end
$var wire 8 +, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 ,, act_in_west [7:0] $end
$var wire 8 -, act_out_east [7:0] $end
$var wire 1 ., clear_accum $end
$var wire 1 1 clk $end
$var wire 1 /, enable $end
$var wire 1 0, load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 1, weight_in_north [7:0] $end
$var wire 8 2, weight_out_south [7:0] $end
$var wire 16 3, mult_result_signed [15:0] $end
$var wire 16 4, mult_result_raw [15:0] $end
$var wire 32 5, mult_result_extended [31:0] $end
$var wire 32 6, accum_out [31:0] $end
$var reg 32 7, accum_reg [31:0] $end
$var reg 8 8, act_delay [7:0] $end
$var reg 8 9, weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[2] $end
$var wire 8 :, pe_act_in [7:0] $end
$var wire 8 ;, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 <, act_in_west [7:0] $end
$var wire 8 =, act_out_east [7:0] $end
$var wire 1 >, clear_accum $end
$var wire 1 1 clk $end
$var wire 1 ?, enable $end
$var wire 1 @, load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 A, weight_in_north [7:0] $end
$var wire 8 B, weight_out_south [7:0] $end
$var wire 16 C, mult_result_signed [15:0] $end
$var wire 16 D, mult_result_raw [15:0] $end
$var wire 32 E, mult_result_extended [31:0] $end
$var wire 32 F, accum_out [31:0] $end
$var reg 32 G, accum_reg [31:0] $end
$var reg 8 H, act_delay [7:0] $end
$var reg 8 I, weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[3] $end
$var wire 8 J, pe_act_in [7:0] $end
$var wire 8 K, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 L, act_in_west [7:0] $end
$var wire 8 M, act_out_east [7:0] $end
$var wire 1 N, clear_accum $end
$var wire 1 1 clk $end
$var wire 1 O, enable $end
$var wire 1 P, load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 Q, weight_in_north [7:0] $end
$var wire 8 R, weight_out_south [7:0] $end
$var wire 16 S, mult_result_signed [15:0] $end
$var wire 16 T, mult_result_raw [15:0] $end
$var wire 32 U, mult_result_extended [31:0] $end
$var wire 32 V, accum_out [31:0] $end
$var reg 32 W, accum_reg [31:0] $end
$var reg 8 X, act_delay [7:0] $end
$var reg 8 Y, weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[4] $end
$var wire 8 Z, pe_act_in [7:0] $end
$var wire 8 [, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 \, act_in_west [7:0] $end
$var wire 8 ], act_out_east [7:0] $end
$var wire 1 ^, clear_accum $end
$var wire 1 1 clk $end
$var wire 1 _, enable $end
$var wire 1 `, load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 a, weight_in_north [7:0] $end
$var wire 8 b, weight_out_south [7:0] $end
$var wire 16 c, mult_result_signed [15:0] $end
$var wire 16 d, mult_result_raw [15:0] $end
$var wire 32 e, mult_result_extended [31:0] $end
$var wire 32 f, accum_out [31:0] $end
$var reg 32 g, accum_reg [31:0] $end
$var reg 8 h, act_delay [7:0] $end
$var reg 8 i, weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[5] $end
$var wire 8 j, pe_act_in [7:0] $end
$var wire 8 k, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 l, act_in_west [7:0] $end
$var wire 8 m, act_out_east [7:0] $end
$var wire 1 n, clear_accum $end
$var wire 1 1 clk $end
$var wire 1 o, enable $end
$var wire 1 p, load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 q, weight_in_north [7:0] $end
$var wire 8 r, weight_out_south [7:0] $end
$var wire 16 s, mult_result_signed [15:0] $end
$var wire 16 t, mult_result_raw [15:0] $end
$var wire 32 u, mult_result_extended [31:0] $end
$var wire 32 v, accum_out [31:0] $end
$var reg 32 w, accum_reg [31:0] $end
$var reg 8 x, act_delay [7:0] $end
$var reg 8 y, weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[6] $end
$var wire 8 z, pe_act_in [7:0] $end
$var wire 8 {, pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 |, act_in_west [7:0] $end
$var wire 8 }, act_out_east [7:0] $end
$var wire 1 ~, clear_accum $end
$var wire 1 1 clk $end
$var wire 1 !- enable $end
$var wire 1 "- load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 #- weight_in_north [7:0] $end
$var wire 8 $- weight_out_south [7:0] $end
$var wire 16 %- mult_result_signed [15:0] $end
$var wire 16 &- mult_result_raw [15:0] $end
$var wire 32 '- mult_result_extended [31:0] $end
$var wire 32 (- accum_out [31:0] $end
$var reg 32 )- accum_reg [31:0] $end
$var reg 8 *- act_delay [7:0] $end
$var reg 8 +- weight_reg [7:0] $end
$upscope $end
$upscope $end
$scope begin pe_cols[7] $end
$var wire 8 ,- pe_act_in [7:0] $end
$var wire 8 -- pe_weight_in [7:0] $end
$scope module u_pe $end
$var wire 8 .- act_in_west [7:0] $end
$var wire 8 /- act_out_east [7:0] $end
$var wire 1 0- clear_accum $end
$var wire 1 1 clk $end
$var wire 1 1- enable $end
$var wire 1 2- load_weight $end
$var wire 1 3 rst_n $end
$var wire 1 B" signed_mode $end
$var wire 8 3- weight_in_north [7:0] $end
$var wire 8 4- weight_out_south [7:0] $end
$var wire 16 5- mult_result_signed [15:0] $end
$var wire 16 6- mult_result_raw [15:0] $end
$var wire 32 7- mult_result_extended [31:0] $end
$var wire 32 8- accum_out [31:0] $end
$var reg 32 9- accum_reg [31:0] $end
$var reg 8 :- act_delay [7:0] $end
$var reg 8 ;- weight_reg [7:0] $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$scope module u_weight_buffer $end
$var wire 1 1 clk $end
$var wire 1 a enable $end
$var wire 4 <- load_addr [3:0] $end
$var wire 8 =- load_data [7:0] $end
$var wire 1 >- load_en $end
$var wire 1 3 rst_n $end
$var integer 32 ?- i [31:0] $end
$var integer 32 @- idx [31:0] $end
$scope module u_skew $end
$var wire 1 1 clk $end
$var wire 1 a enable $end
$var wire 1 3 rst_n $end
$scope begin skew_rows[0] $end
$scope begin delay_stages[1] $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[1] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[2] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[3] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[4] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[5] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[6] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[7] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$scope module u_weight_skew $end
$var wire 1 1 clk $end
$var wire 1 _ enable $end
$var wire 1 3 rst_n $end
$scope begin skew_rows[0] $end
$scope begin delay_stages[1] $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[1] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[2] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[3] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[4] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[5] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[6] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$upscope $end
$upscope $end
$scope begin skew_rows[7] $end
$scope begin delay_stages[1] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[2] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[3] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[4] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[5] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[6] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$scope begin delay_stages[7] $end
$scope begin genblk3 $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$upscope $end
$enddefinitions $end
#0
$dumpvars
b10000 @-
b1000 ?-
x>-
bz =-
bz <-
b0 ;-
b0 :-
b0 9-
b0 8-
b0 7-
b0 6-
b0 5-
b0 4-
b0 3-
02-
01-
00-
b0 /-
b0 .-
b0 --
b0 ,-
b0 +-
b0 *-
b0 )-
b0 (-
b0 '-
b0 &-
b0 %-
b0 $-
b0 #-
0"-
0!-
0~,
b0 },
b0 |,
b0 {,
b0 z,
b0 y,
b0 x,
b0 w,
b0 v,
b0 u,
b0 t,
b0 s,
b0 r,
b0 q,
0p,
0o,
0n,
b0 m,
b0 l,
b0 k,
b0 j,
b0 i,
b0 h,
b0 g,
b0 f,
b0 e,
b0 d,
b0 c,
b0 b,
b0 a,
0`,
0_,
0^,
b0 ],
b0 \,
b0 [,
b0 Z,
b0 Y,
b0 X,
b0 W,
b0 V,
b0 U,
b0 T,
b0 S,
b0 R,
b0 Q,
0P,
0O,
0N,
b0 M,
b0 L,
b0 K,
b0 J,
b0 I,
b0 H,
b0 G,
b0 F,
b0 E,
b0 D,
b0 C,
b0 B,
b0 A,
0@,
0?,
0>,
b0 =,
b0 <,
b0 ;,
b0 :,
b0 9,
b0 8,
b0 7,
b0 6,
b0 5,
b0 4,
b0 3,
b0 2,
b0 1,
00,
0/,
0.,
b0 -,
b0 ,,
b0 +,
b0 *,
b0 ),
b0 (,
b0 ',
b0 &,
b0 %,
b0 $,
b0 #,
b0 ",
b0 !,
0~+
0}+
0|+
b0 {+
b0 z+
b0 y+
b0 x+
b0 w+
b0 v+
b0 u+
b0 t+
b0 s+
b0 r+
b0 q+
b0 p+
b0 o+
0n+
0m+
0l+
b0 k+
b0 j+
b0 i+
b0 h+
b0 g+
b0 f+
b0 e+
b0 d+
b0 c+
b0 b+
b0 a+
b0 `+
b0 _+
0^+
0]+
0\+
b0 [+
b0 Z+
b0 Y+
b0 X+
b0 W+
b0 V+
b0 U+
b0 T+
b0 S+
b0 R+
b0 Q+
b0 P+
b0 O+
0N+
0M+
0L+
b0 K+
b0 J+
b0 I+
b0 H+
b0 G+
b0 F+
b0 E+
b0 D+
b0 C+
b0 B+
b0 A+
b0 @+
b0 ?+
0>+
0=+
0<+
b0 ;+
b0 :+
b0 9+
b0 8+
b0 7+
b0 6+
b0 5+
b0 4+
b0 3+
b0 2+
b0 1+
b0 0+
b0 /+
0.+
0-+
0,+
b0 ++
b0 *+
b0 )+
b0 (+
b0 '+
b0 &+
b0 %+
b0 $+
b0 #+
b0 "+
b0 !+
b0 ~*
b0 }*
0|*
0{*
0z*
b0 y*
b0 x*
b0 w*
b0 v*
b0 u*
b0 t*
b0 s*
b0 r*
b0 q*
b0 p*
b0 o*
b0 n*
b0 m*
0l*
0k*
0j*
b0 i*
b0 h*
b0 g*
b0 f*
b0 e*
b0 d*
b0 c*
b0 b*
b0 a*
b0 `*
b0 _*
b0 ^*
b0 ]*
0\*
0[*
0Z*
b0 Y*
b0 X*
b0 W*
b0 V*
b0 U*
b0 T*
b0 S*
b0 R*
b0 Q*
b0 P*
b0 O*
b0 N*
b0 M*
0L*
0K*
0J*
b0 I*
b0 H*
b0 G*
b0 F*
b0 E*
b0 D*
b0 C*
b0 B*
b0 A*
b0 @*
b0 ?*
b0 >*
b0 =*
0<*
0;*
0:*
b0 9*
b0 8*
b0 7*
b0 6*
b0 5*
b0 4*
b0 3*
b0 2*
b0 1*
b0 0*
b0 /*
b0 .*
b0 -*
0,*
0+*
0**
b0 )*
b0 (*
b0 '*
b0 &*
b0 %*
b0 $*
b0 #*
b0 "*
b0 !*
b0 ~)
b0 })
b0 |)
b0 {)
0z)
0y)
0x)
b0 w)
b0 v)
b0 u)
b0 t)
b0 s)
b0 r)
b0 q)
b0 p)
b0 o)
b0 n)
b0 m)
b0 l)
b0 k)
0j)
0i)
0h)
b0 g)
b0 f)
b0 e)
b0 d)
b0 c)
b0 b)
b0 a)
b0 `)
b0 _)
b0 ^)
b0 ])
b0 \)
b0 [)
0Z)
0Y)
0X)
b0 W)
b0 V)
b0 U)
b0 T)
b0 S)
b0 R)
b0 Q)
b0 P)
b0 O)
b0 N)
b0 M)
b0 L)
b0 K)
0J)
0I)
0H)
b0 G)
b0 F)
b0 E)
b0 D)
b0 C)
b0 B)
b0 A)
b0 @)
b0 ?)
b0 >)
b0 =)
b0 <)
b0 ;)
0:)
09)
08)
b0 7)
b0 6)
b0 5)
b0 4)
b0 3)
b0 2)
b0 1)
b0 0)
b0 /)
b0 .)
b0 -)
b0 ,)
b0 +)
0*)
0))
0()
b0 ')
b0 &)
b0 %)
b0 $)
b0 #)
b0 ")
b0 !)
b0 ~(
b0 }(
b0 |(
b0 {(
b0 z(
b0 y(
0x(
0w(
0v(
b0 u(
b0 t(
b0 s(
b0 r(
b0 q(
b0 p(
b0 o(
b0 n(
b0 m(
b0 l(
b0 k(
b0 j(
b0 i(
0h(
0g(
0f(
b0 e(
b0 d(
b0 c(
b0 b(
b0 a(
b0 `(
b0 _(
b0 ^(
b0 ](
b0 \(
b0 [(
b0 Z(
b0 Y(
0X(
0W(
0V(
b0 U(
b0 T(
b0 S(
b0 R(
b0 Q(
b0 P(
b0 O(
b0 N(
b0 M(
b0 L(
b0 K(
b0 J(
b0 I(
0H(
0G(
0F(
b0 E(
b0 D(
b0 C(
b0 B(
b0 A(
b0 @(
b0 ?(
b0 >(
b0 =(
b0 <(
b0 ;(
b0 :(
b0 9(
08(
07(
06(
b0 5(
b0 4(
b0 3(
b0 2(
b0 1(
b0 0(
b0 /(
b0 .(
b0 -(
b0 ,(
b0 +(
b0 *(
b0 )(
0((
0'(
0&(
b0 %(
b0 $(
b0 #(
b0 "(
b0 !(
b0 ~'
b0 }'
b0 |'
b0 {'
b0 z'
b0 y'
b0 x'
b0 w'
0v'
0u'
0t'
b0 s'
b0 r'
b0 q'
b0 p'
b0 o'
b0 n'
b0 m'
b0 l'
b0 k'
b0 j'
b0 i'
b0 h'
b0 g'
0f'
0e'
0d'
b0 c'
b0 b'
b0 a'
b0 `'
b0 _'
b0 ^'
b0 ]'
b0 \'
b0 ['
b0 Z'
b0 Y'
b0 X'
b0 W'
0V'
0U'
0T'
b0 S'
b0 R'
b0 Q'
b0 P'
b0 O'
b0 N'
b0 M'
b0 L'
b0 K'
b0 J'
b0 I'
b0 H'
b0 G'
0F'
0E'
0D'
b0 C'
b0 B'
b0 A'
b0 @'
b0 ?'
b0 >'
b0 ='
b0 <'
b0 ;'
b0 :'
b0 9'
b0 8'
b0 7'
06'
05'
04'
b0 3'
b0 2'
b0 1'
b0 0'
b0 /'
b0 .'
b0 -'
b0 ,'
b0 +'
b0 *'
b0 )'
b0 ('
b0 ''
0&'
0%'
0$'
b0 #'
b0 "'
b0 !'
b0 ~&
b0 }&
b0 |&
b0 {&
b0 z&
b0 y&
b0 x&
b0 w&
b0 v&
b0 u&
0t&
0s&
0r&
b0 q&
b0 p&
b0 o&
b0 n&
b0 m&
b0 l&
b0 k&
b0 j&
b0 i&
b0 h&
b0 g&
b0 f&
b0 e&
0d&
0c&
0b&
b0 a&
b0 `&
b0 _&
b0 ^&
b0 ]&
b0 \&
b0 [&
b0 Z&
b0 Y&
b0 X&
b0 W&
b0 V&
b0 U&
0T&
0S&
0R&
b0 Q&
b0 P&
b0 O&
b0 N&
b0 M&
b0 L&
b0 K&
b0 J&
b0 I&
b0 H&
b0 G&
b0 F&
b0 E&
0D&
0C&
0B&
b0 A&
b0 @&
b0 ?&
b0 >&
b0 =&
b0 <&
b0 ;&
b0 :&
b0 9&
b0 8&
b0 7&
b0 6&
b0 5&
04&
03&
02&
b0 1&
b0 0&
b0 /&
b0 .&
b0 -&
b0 ,&
b0 +&
b0 *&
b0 )&
b0 (&
b0 '&
b0 &&
b0 %&
0$&
0#&
0"&
b0 !&
b0 ~%
b0 }%
b0 |%
b0 {%
b0 z%
b0 y%
b0 x%
b0 w%
b0 v%
b0 u%
b0 t%
b0 s%
0r%
0q%
0p%
b0 o%
b0 n%
b0 m%
b0 l%
b0 k%
b0 j%
b0 i%
b0 h%
b0 g%
b0 f%
b0 e%
b0 d%
b0 c%
0b%
0a%
0`%
b0 _%
b0 ^%
b0 ]%
b0 \%
b0 [%
b0 Z%
b0 Y%
b0 X%
b0 W%
b0 V%
b0 U%
b0 T%
b0 S%
0R%
0Q%
0P%
b0 O%
b0 N%
b0 M%
b0 L%
b0 K%
b0 J%
b0 I%
b0 H%
b0 G%
b0 F%
b0 E%
b0 D%
b0 C%
0B%
0A%
0@%
b0 ?%
b0 >%
b0 =%
b0 <%
b0 ;%
b0 :%
b0 9%
b0 8%
b0 7%
b0 6%
b0 5%
b0 4%
b0 3%
02%
01%
00%
b0 /%
b0 .%
b0 -%
b0 ,%
b0 +%
b0 *%
b0 )%
b0 (%
b0 '%
b0 &%
b0 %%
b0 $%
b0 #%
0"%
0!%
0~$
b0 }$
b0 |$
b0 {$
b0 z$
b0 y$
b0 x$
b0 w$
b0 v$
b0 u$
b0 t$
b0 s$
b0 r$
b0 q$
0p$
0o$
0n$
b0 m$
b0 l$
b0 k$
b0 j$
b0 i$
b0 h$
b0 g$
b0 f$
b0 e$
b0 d$
b0 c$
b0 b$
b0 a$
0`$
0_$
0^$
b0 ]$
b0 \$
b0 [$
b0 Z$
b0 Y$
b0 X$
b0 W$
b0 V$
b0 U$
b0 T$
b0 S$
b0 R$
b0 Q$
0P$
0O$
0N$
b0 M$
b0 L$
b0 K$
b0 J$
b0 I$
b0 H$
b0 G$
b0 F$
b0 E$
b0 D$
b0 C$
b0 B$
b0 A$
0@$
0?$
0>$
b0 =$
b0 <$
b0 ;$
b0 :$
b0 9$
b0 8$
b0 7$
b0 6$
b0 5$
b0 4$
b0 3$
b0 2$
b0 1$
00$
0/$
0.$
b0 -$
b0 ,$
b0 +$
b0 *$
b0 )$
b0 ($
b0 '$
b0 &$
b0 %$
b0 $$
b0 #$
b0 "$
b0 !$
0~#
0}#
0|#
b0 {#
b0 z#
b0 y#
b0 x#
b0 w#
b0 v#
b0 u#
b0 t#
b0 s#
b0 r#
b0 q#
b0 p#
b0 o#
0n#
0m#
0l#
b0 k#
b0 j#
b0 i#
b0 h#
b0 g#
b0 f#
b0 e#
b0 d#
b0 c#
b0 b#
b0 a#
b0 `#
b0 _#
0^#
0]#
0\#
b0 [#
b0 Z#
b0 Y#
b0 X#
b0 W#
b0 V#
b0 U#
b0 T#
b0 S#
b0 R#
b0 Q#
b0 P#
b0 O#
0N#
0M#
0L#
b0 K#
b0 J#
b0 I#
b0 H#
b0 G#
b0 F#
b0 E#
b0 D#
b0 C#
b0 B#
b0 A#
b0 @#
b0 ?#
0>#
0=#
0<#
b0 ;#
b0 :#
b0 9#
b0 8#
b0 7#
b0 6#
b0 5#
b0 4#
b0 3#
b0 2#
b0 1#
b0 0#
b0 /#
0.#
0-#
0,#
b0 +#
b0 *#
b0 )#
b0 (#
b0 '#
b0 &#
b0 %#
b0 $#
b0 ##
b0 "#
b0 !#
b0 ~"
b0 }"
0|"
0{"
0z"
b0 y"
b0 x"
b0 w"
b0 v"
b0 u"
b0 t"
b0 s"
b0 r"
b0 q"
b0 p"
b0 o"
b0 n"
b0 m"
0l"
0k"
0j"
b0 i"
b0 h"
b0 g"
b0 f"
b0 e"
b0 d"
b0 c"
b0 b"
b0 a"
b0 `"
b0 _"
b0 ^"
b0 ]"
0\"
0["
0Z"
b0 Y"
b0 X"
b0 W"
b0 V"
b0 U"
b0 T"
b0 S"
b0 R"
b0 Q"
b0 P"
b0 O"
b0 N"
b0 M"
0L"
0K"
0J"
b0 I"
b0 H"
b0 G"
b0 F"
b0 E"
b0 D"
b0 C"
zB"
b0 A"
b0 @"
bx ?"
0>"
b0 ="
bz <"
b0 ;"
b0 :"
bz 9"
bz 8"
b0 7"
b0 6"
b0 5"
b0 4"
b0 3"
b0 2"
b0 1"
b0 0"
b0 /"
b0 ."
b0 -"
b0 ,"
b0 +"
b0 *"
b0 )"
b0 ("
b0 '"
b0 &"
b0 %"
b0 $"
b0 #"
b0 ""
b0 !"
b0 ~
b0 }
b0 |
b0 {
b0 z
b0 y
b0 x
b0 w
b0 v
0u
bz t
zs
b0 r
b100000000 q
b10000 p
b10000 o
b1000 n
xm
bz l
bz k
0j
0i
0h
bz g
b0 f
0e
0d
b0 c
0b
0a
0`
0_
bz ^
bz ]
b0 \
b100000000 [
b0 Z
b10000 Y
bz X
bz W
bz V
bz U
b0 T
0S
b0 R
0Q
b0 P
0O
xN
1M
0L
0K
0J
xI
xH
b0zzzz G
zF
bz E
bz D
b0 C
b1111 B
bx A
bx @
z?
z>
z=
bz <
bz ;
z:
z9
bz 8
bz 7
z6
bx 5
bx 4
03
x2
11
b0zzzz 0
b0 /
z.
bz -
bz ,
b1111 +
0*
0)
z(
1'
bz &
bz %
0$
z#
bz "
bz !
$end
#2500
01
#5000
b1000 n
b10000 o
b1000 ?-
b10000 @-
11
#7500
01
#10000
11
13
#12500
01
#15000
11
#17500
01
#20000
11
b1100111 -
b1 ,
1.
#22500
01
#25000
b10111 -
b10 ,
11
#27500
01
#30000
b10 -
b11 ,
11
#32500
01
#35000
b10101 -
b100 ,
11
#37500
01
#40000
b110100 -
b101 ,
11
#42500
01
#45000
b1 -
b110 ,
11
#47500
01
#50000
b1010111 -
b111 ,
11
#52500
01
#55000
b1101011 -
b1000 ,
11
#57500
01
#60000
b11101 -
b1001 ,
11
#62500
01
#65000
b100101 -
b1010 ,
11
#67500
01
#70000
b1 -
b1011 ,
11
#72500
01
#75000
b111111 -
b1100 ,
11
#77500
01
#80000
b111011 -
b1101 ,
11
#82500
01
#85000
b10100 -
b1110 ,
11
#87500
01
#90000
b100000 -
b1111 ,
11
#92500
01
#95000
b1100110 "
b0 !
1#
0.
11
#97500
01
#100000
b110011 "
b1 !
11
#102500
01
#105000
b1011100 "
b10 !
11
#107500
01
#110000
b1110 "
b11 !
11
#112500
01
#115000
b1101010 "
b100 !
11
#117500
01
#120000
b1000111 "
b101 !
11
#122500
01
#125000
b111100 "
b110 !
11
#127500
01
#130000
b10100 "
b111 !
11
#132500
01
#135000
b1100110 "
b1000 !
11
#137500
01
#140000
b1111001 "
b1001 !
11
#142500
01
#145000
b1010010 "
b1010 !
11
#147500
01
#150000
b1010110 "
b1011 !
11
#152500
01
#155000
b1001010 "
b1100 !
11
#157500
01
#160000
b1101 !
11
#162500
01
#165000
b1010111 "
b1110 !
11
#167500
01
#170000
b1110100 "
b1111 !
11
#172500
01
#175000
1(
b100 %
b11 &
0#
11
#177500
01
#180000
0(
11
#182500
01
#185000
11
#187500
01
#190000
11
#192500
01
#195000
11
#197500
01
#200000
11
#202500
01
#205000
11
#207500
01
#210000
11
#212500
01
#215000
11
#217500
01
#220000
11
#222500
01
#225000
11
#227500
01
#230000
11
#232500
01
#235000
11
#237500
01
#240000
11
#242500
01
#245000
11
#247500
01
#250000
11
#252500
01
#255000
11
#257500
01
#260000
11
#262500
01
#265000
11
#267500
01
#270000
11
#272500
01
#275000
11
#277500
01
#280000
11
#282500
01
#285000
11
#287500
01
#290000
11
#292500
01
#295000
11
#297500
01
#300000
11
#302500
01
#305000
11
#307500
01
#310000
11
#312500
01
#315000
11
#317500
01
#320000
11
#322500
01
#325000
11
#327500
01
#330000
11
#332500
01
#335000
11
#337500
01
#340000
11
#342500
01
#345000
11
#347500
01
#350000
11
#352500
01
#355000
11
#357500
01
#360000
11
#362500
01
#365000
11
#367500
01
#370000
11
#372500
01
#375000
11
#377500
01
#380000
11
#382500
01
#385000
11
#387500
01
#390000
11
#392500
01
#395000
11
#397500
01
#400000
11
#402500
01
#405000
11
#407500
01
#410000
11
#412500
01
#415000
11
#417500
01
#420000
11
#422500
01
#425000
11
#427500
01
#430000
11
#432500
01
#435000
11
#437500
01
#440000
11
#442500
01
#445000
11
#447500
01
#450000
11
#452500
01
#455000
11
#457500
01
#460000
11
#462500
01
#465000
11
#467500
01
#470000
11
#472500
01
#475000
11
#477500
01
#480000
11
#482500
01
#485000
11
#487500
01
#490000
11
#492500
01
#495000
11
#497500
01
#500000
11
#502500
01
#505000
11
#507500
01
#510000
11
#512500
01
#515000
11
#517500
01
#520000
11
#522500
01
#525000
11
#527500
01
#530000
11
#532500
01
#535000
11
#537500
01
#540000
11
#542500
01
#545000
11
#547500
01
#550000
11
#552500
01
#555000
11
#557500
01
#560000
11
#562500
01
#565000
11
#567500
01
#570000
11
#572500
01
#575000
11
#577500
01
#580000
11
#582500
01
#585000
11
#587500
01
#590000
11
#592500
01
#595000
11
#597500
01
#600000
11
#602500
01
#605000
11
#607500
01
#610000
11
#612500
01
#615000
11
#617500
01
#620000
11
#622500
01
#625000
11
#627500
01
#630000
11
#632500
01
#635000
11
#637500
01
#640000
11
#642500
01
#645000
11
#647500
01
#650000
11
#652500
01
#655000
11
#657500
01
#660000
11
#662500
01
#665000
11
#667500
01
#670000
11
#672500
01
#675000
11
#677500
01
#680000
11
#682500
01
#685000
11
#687500
01
#690000
11
#692500
01
#695000
11
#697500
01
#700000
11
#702500
01
#705000
11
#707500
01
#710000
11
#712500
01
#715000
11
#717500
01
#720000
11
#722500
01
#725000
11
#727500
01
#730000
11
#732500
01
#735000
11
#737500
01
#740000
11
#742500
01
#745000
11
#747500
01
#750000
11
#752500
01
#755000
11
#757500
01
#760000
11
#762500
01
#765000
11
#767500
01
#770000
11
#772500
01
#775000
11
#777500
01
#780000
11
#782500
01
#785000
11
#787500
01
#790000
11
#792500
01
#795000
11
#797500
01
#800000
11
#802500
01
#805000
11
#807500
01
#810000
11
#812500
01
#815000
11
#817500
01
#820000
11
#822500
01
#825000
11
#827500
01
#830000
11
#832500
01
#835000
11
#837500
01
#840000
11
#842500
01
#845000
11
#847500
01
#850000
11
#852500
01
#855000
11
#857500
01
#860000
11
#862500
01
#865000
11
#867500
01
#870000
11
#872500
01
#875000
11
#877500
01
#880000
11
#882500
01
#885000
11
#887500
01
#890000
11
#892500
01
#895000
11
#897500
01
#900000
11
#902500
01
#905000
11
#907500
01
#910000
11
#912500
01
#915000
11
#917500
01
#920000
11
#922500
01
#925000
11
#927500
01
#930000
11
#932500
01
#935000
11
#937500
01
#940000
11
#942500
01
#945000
11
#947500
01
#950000
11
#952500
01
#955000
11
#957500
01
#960000
11
#962500
01
#965000
11
#967500
01
#970000
11
#972500
01
#975000
11
#977500
01
#980000
11
#982500
01
#985000
11
#987500
01
#990000
11
#992500
01
#995000
11
#997500
01
#1000000
11
#1002500
01
#1005000
11
#1007500
01
#1010000
11
#1012500
01
#1015000
11
#1017500
01
#1020000
11
#1022500
01
#1025000
11
#1027500
01
#1030000
11
#1032500
01
#1035000
11
#1037500
01
#1040000
11
#1042500
01
#1045000
11
#1047500
01
#1050000
11
#1052500
01
#1055000
11
#1057500
01
#1060000
11
#1062500
01
#1065000
11
#1067500
01
#1070000
11
#1072500
01
#1075000
11
#1077500
01
#1080000
11
#1082500
01
#1085000
11
#1087500
01
#1090000
11
#1092500
01
#1095000
11
#1097500
01
#1100000
11
#1102500
01
#1105000
11
#1107500
01
#1110000
11
#1112500
01
#1115000
11
#1117500
01
#1120000
11
#1122500
01
#1125000
11
#1127500
01
#1130000
11
#1132500
01
#1135000
11
#1137500
01
#1140000
11
#1142500
01
#1145000
11
#1147500
01
#1150000
11
#1152500
01
#1155000
11
#1157500
01
#1160000
11
#1162500
01
#1165000
11
#1167500
01
#1170000
11
#1172500
01
#1175000
11
#1177500
01
#1180000
11
#1182500
01
#1185000
11
#1187500
01
#1190000
11
#1192500
01
#1195000
11
#1197500
01
#1200000
11
#1202500
01
#1205000
11
#1207500
01
#1210000
11
#1212500
01
#1215000
11
#1217500
01
#1220000
11
#1222500
01
#1225000
11
#1227500
01
#1230000
11
#1232500
01
#1235000
11
#1237500
01
#1240000
11
#1242500
01
#1245000
11
#1247500
01
#1250000
11
#1252500
01
#1255000
11
#1257500
01
#1260000
11
#1262500
01
#1265000
11
#1267500
01
#1270000
11
#1272500
01
#1275000
11
#1277500
01
#1280000
11
#1282500
01
#1285000
11
#1287500
01
#1290000
11
#1292500
01
#1295000
11
#1297500
01
#1300000
11
#1302500
01
#1305000
11
#1307500
01
#1310000
11
#1312500
01
#1315000
11
#1317500
01
#1320000
11
#1322500
01
#1325000
11
#1327500
01
#1330000
11
#1332500
01
#1335000
11
#1337500
01
#1340000
11
#1342500
01
#1345000
11
#1347500
01
#1350000
11
#1352500
01
#1355000
11
#1357500
01
#1360000
11
#1362500
01
#1365000
11
#1367500
01
#1370000
11
#1372500
01
#1375000
11
#1377500
01
#1380000
11
#1382500
01
#1385000
11
#1387500
01
#1390000
11
#1392500
01
#1395000
11
#1397500
01
#1400000
11
#1402500
01
#1405000
11
#1407500
01
#1410000
11
#1412500
01
#1415000
11
#1417500
01
#1420000
11
#1422500
01
#1425000
11
#1427500
01
#1430000
11
#1432500
01
#1435000
11
#1437500
01
#1440000
11
#1442500
01
#1445000
11
#1447500
01
#1450000
11
#1452500
01
#1455000
11
#1457500
01
#1460000
11
#1462500
01
#1465000
11
#1467500
01
#1470000
11
#1472500
01
#1475000
11
#1477500
01
#1480000
11
#1482500
01
#1485000
11
#1487500
01
#1490000
11
#1492500
01
#1495000
11
#1497500
01
#1500000
11
#1502500
01
#1505000
11
#1507500
01
#1510000
11
#1512500
01
#1515000
11
#1517500
01
#1520000
11
#1522500
01
#1525000
11
#1527500
01
#1530000
11
#1532500
01
#1535000
11
#1537500
01
#1540000
11
#1542500
01
#1545000
11
#1547500
01
#1550000
11
#1552500
01
#1555000
11
#1557500
01
#1560000
11
#1562500
01
#1565000
11
#1567500
01
#1570000
11
#1572500
01
#1575000
11
#1577500
01
#1580000
11
#1582500
01
#1585000
11
#1587500
01
#1590000
11
#1592500
01
#1595000
11
#1597500
01
#1600000
11
#1602500
01
#1605000
11
#1607500
01
#1610000
11
#1612500
01
#1615000
11
#1617500
01
#1620000
11
#1622500
01
#1625000
11
#1627500
01
#1630000
11
#1632500
01
#1635000
11
#1637500
01
#1640000
11
#1642500
01
#1645000
11
#1647500
01
#1650000
11
#1652500
01
#1655000
11
#1657500
01
#1660000
11
#1662500
01
#1665000
11
#1667500
01
#1670000
11
#1672500
01
#1675000
11
#1677500
01
#1680000
11
#1682500
01
#1685000
11
#1687500
01
#1690000
11
#1692500
01
#1695000
11
#1697500
01
#1700000
11
#1702500
01
#1705000
11
#1707500
01
#1710000
11
#1712500
01
#1715000
11
#1717500
01
#1720000
11
#1722500
01
#1725000
11
#1727500
01
#1730000
11
#1732500
01
#1735000
11
#1737500
01
#1740000
11
#1742500
01
#1745000
11
#1747500
01
#1750000
11
#1752500
01
#1755000
11
#1757500
01
#1760000
11
#1762500
01
#1765000
11
#1767500
01
#1770000
11
#1772500
01
#1775000
11
#1777500
01
#1780000
11
#1782500
01
#1785000
11
#1787500
01
#1790000
11
#1792500
01
#1795000
11
#1797500
01
#1800000
11
#1802500
01
#1805000
11
#1807500
01
#1810000
11
#1812500
01
#1815000
11
#1817500
01
#1820000
11
#1822500
01
#1825000
11
#1827500
01
#1830000
11
#1832500
01
#1835000
11
#1837500
01
#1840000
11
#1842500
01
#1845000
11
#1847500
01
#1850000
11
#1852500
01
#1855000
11
#1857500
01
#1860000
11
#1862500
01
#1865000
11
#1867500
01
#1870000
11
#1872500
01
#1875000
11
#1877500
01
#1880000
11
#1882500
01
#1885000
11
#1887500
01
#1890000
11
#1892500
01
#1895000
11
#1897500
01
#1900000
11
#1902500
01
#1905000
11
#1907500
01
#1910000
11
#1912500
01
#1915000
11
#1917500
01
#1920000
11
#1922500
01
#1925000
11
#1927500
01
#1930000
11
#1932500
01
#1935000
11
#1937500
01
#1940000
11
#1942500
01
#1945000
11
#1947500
01
#1950000
11
#1952500
01
#1955000
11
#1957500
01
#1960000
11
#1962500
01
#1965000
11
#1967500
01
#1970000
11
#1972500
01
#1975000
11
#1977500
01
#1980000
11
#1982500
01
#1985000
11
#1987500
01
#1990000
11
#1992500
01
#1995000
11
#1997500
01
#2000000
11
#2002500
01
#2005000
11
#2007500
01
#2010000
11
#2012500
01
#2015000
11
#2017500
01
#2020000
11
#2022500
01
#2025000
11
#2027500
01
#2030000
11
#2032500
01
#2035000
11
#2037500
01
#2040000
11
#2042500
01
#2045000
11
#2047500
01
#2050000
11
#2052500
01
#2055000
11
#2057500
01
#2060000
11
#2062500
01
#2065000
11
#2067500
01
#2070000
11
#2072500
01
#2075000
11
#2077500
01
#2080000
11
#2082500
01
#2085000
11
#2087500
01
#2090000
11
#2092500
01
#2095000
11
#2097500
01
#2100000
11
#2102500
01
#2105000
11
#2107500
01
#2110000
11
#2112500
01
#2115000
11
#2117500
01
#2120000
11
#2122500
01
#2125000
11
#2127500
01
#2130000
11
#2132500
01
#2135000
11
#2137500
01
#2140000
11
#2142500
01
#2145000
11
#2147500
01
#2150000
11
#2152500
01
#2155000
11
#2157500
01
#2160000
11
#2162500
01
#2165000
11
#2167500
01
#2170000
11
#2172500
01
#2175000
11
#2177500
01
#2180000
11
#2182500
01
#2185000
11
#2187500
01
#2190000
11
#2192500
01
#2195000
11
#2197500
01
#2200000
11
#2202500
01
#2205000
11
#2207500
01
#2210000
11
#2212500
01
#2215000
11
#2217500
01
#2220000
11
#2222500
01
#2225000
11
#2227500
01
#2230000
11
#2232500
01
#2235000
11
#2237500
01
#2240000
11
#2242500
01
#2245000
11
#2247500
01
#2250000
11
#2252500
01
#2255000
11
#2257500
01
#2260000
11
#2262500
01
#2265000
11
#2267500
01
#2270000
11
#2272500
01
#2275000
11
#2277500
01
#2280000
11
#2282500
01
#2285000
11
#2287500
01
#2290000
11
#2292500
01
#2295000
11
#2297500
01
#2300000
11
#2302500
01
#2305000
11
#2307500
01
#2310000
11
#2312500
01
#2315000
11
#2317500
01
#2320000
11
#2322500
01
#2325000
11
#2327500
01
#2330000
11
#2332500
01
#2335000
11
#2337500
01
#2340000
11
#2342500
01
#2345000
11
#2347500
01
#2350000
11
#2352500
01
#2355000
11
#2357500
01
#2360000
11
#2362500
01
#2365000
11
#2367500
01
#2370000
11
#2372500
01
#2375000
11
#2377500
01
#2380000
11
#2382500
01
#2385000
11
#2387500
01
#2390000
11
#2392500
01
#2395000
11
#2397500
01
#2400000
11
#2402500
01
#2405000
11
#2407500
01
#2410000
11
#2412500
01
#2415000
11
#2417500
01
#2420000
11
#2422500
01
#2425000
11
#2427500
01
#2430000
11
#2432500
01
#2435000
11
#2437500
01
#2440000
11
#2442500
01
#2445000
11
#2447500
01
#2450000
11
#2452500
01
#2455000
11
#2457500
01
#2460000
11
#2462500
01
#2465000
11
#2467500
01
#2470000
11
#2472500
01
#2475000
11
#2477500
01
#2480000
11
#2482500
01
#2485000
11
#2487500
01
#2490000
11
#2492500
01
#2495000
11
#2497500
01
#2500000
11
#2502500
01
#2505000
11
#2507500
01
#2510000
11
#2512500
01
#2515000
11
#2517500
01
#2520000
11
#2522500
01
#2525000
11
#2527500
01
#2530000
11
#2532500
01
#2535000
11
#2537500
01
#2540000
11
#2542500
01
#2545000
11
#2547500
01
#2550000
11
#2552500
01
#2555000
11
#2557500
01
#2560000
11
#2562500
01
#2565000
11
#2567500
01
#2570000
11
#2572500
01
#2575000
11
#2577500
01
#2580000
11
#2582500
01
#2585000
11
#2587500
01
#2590000
11
#2592500
01
#2595000
11
#2597500
01
#2600000
11
#2602500
01
#2605000
11
#2607500
01
#2610000
11
#2612500
01
#2615000
11
#2617500
01
#2620000
11
#2622500
01
#2625000
11
#2627500
01
#2630000
11
#2632500
01
#2635000
11
#2637500
01
#2640000
11
#2642500
01
#2645000
11
#2647500
01
#2650000
11
#2652500
01
#2655000
11
#2657500
01
#2660000
11
#2662500
01
#2665000
11
#2667500
01
#2670000
11
#2672500
01
#2675000
11
#2677500
01
#2680000
11
#2682500
01
#2685000
11
#2687500
01
#2690000
11
#2692500
01
#2695000
11
#2697500
01
#2700000
11
#2702500
01
#2705000
11
#2707500
01
#2710000
11
#2712500
01
#2715000
11
#2717500
01
#2720000
11
#2722500
01
#2725000
11
#2727500
01
#2730000
11
#2732500
01
#2735000
11
#2737500
01
#2740000
11
#2742500
01
#2745000
11
#2747500
01
#2750000
11
#2752500
01
#2755000
11
#2757500
01
#2760000
11
#2762500
01
#2765000
11
#2767500
01
#2770000
11
#2772500
01
#2775000
11
#2777500
01
#2780000
11
#2782500
01
#2785000
11
#2787500
01
#2790000
11
#2792500
01
#2795000
11
#2797500
01
#2800000
11
#2802500
01
#2805000
11
#2807500
01
#2810000
11
#2812500
01
#2815000
11
#2817500
01
#2820000
11
#2822500
01
#2825000
11
#2827500
01
#2830000
11
#2832500
01
#2835000
11
#2837500
01
#2840000
11
#2842500
01
#2845000
11
#2847500
01
#2850000
11
#2852500
01
#2855000
11
#2857500
01
#2860000
11
#2862500
01
#2865000
11
#2867500
01
#2870000
11
#2872500
01
#2875000
11
#2877500
01
#2880000
11
#2882500
01
#2885000
11
#2887500
01
#2890000
11
#2892500
01
#2895000
11
#2897500
01
#2900000
11
#2902500
01
#2905000
11
#2907500
01
#2910000
11
#2912500
01
#2915000
11
#2917500
01
#2920000
11
#2922500
01
#2925000
11
#2927500
01
#2930000
11
#2932500
01
#2935000
11
#2937500
01
#2940000
11
#2942500
01
#2945000
11
#2947500
01
#2950000
11
#2952500
01
#2955000
11
#2957500
01
#2960000
11
#2962500
01
#2965000
11
#2967500
01
#2970000
11
#2972500
01
#2975000
11
#2977500
01
#2980000
11
#2982500
01
#2985000
11
#2987500
01
#2990000
11
#2992500
01
#2995000
11
#2997500
01
#3000000
11
#3002500
01
#3005000
11
#3007500
01
#3010000
11
#3012500
01
#3015000
11
#3017500
01
#3020000
11
#3022500
01
#3025000
11
#3027500
01
#3030000
11
#3032500
01
#3035000
11
#3037500
01
#3040000
11
#3042500
01
#3045000
11
#3047500
01
#3050000
11
#3052500
01
#3055000
11
#3057500
01
#3060000
11
#3062500
01
#3065000
11
#3067500
01
#3070000
11
#3072500
01
#3075000
11
#3077500
01
#3080000
11
#3082500
01
#3085000
11
#3087500
01
#3090000
11
#3092500
01
#3095000
11
#3097500
01
#3100000
11
#3102500
01
#3105000
11
#3107500
01
#3110000
11
#3112500
01
#3115000
11
#3117500
01
#3120000
11
#3122500
01
#3125000
11
#3127500
01
#3130000
11
#3132500
01
#3135000
11
#3137500
01
#3140000
11
#3142500
01
#3145000
11
#3147500
01
#3150000
11
#3152500
01
#3155000
11
#3157500
01
#3160000
11
#3162500
01
#3165000
11
#3167500
01
#3170000
11
#3172500
01
#3175000
11
#3177500
01
#3180000
11
#3182500
01
#3185000
11
#3187500
01
#3190000
11
#3192500
01
#3195000
11
#3197500
01
#3200000
11
#3202500
01
#3205000
11
#3207500
01
#3210000
11
#3212500
01
#3215000
11
#3217500
01
#3220000
11
#3222500
01
#3225000
11
#3227500
01
#3230000
11
#3232500
01
#3235000
11
#3237500
01
#3240000
11
#3242500
01
#3245000
11
#3247500
01
#3250000
11
#3252500
01
#3255000
11
#3257500
01
#3260000
11
#3262500
01
#3265000
11
#3267500
01
#3270000
11
#3272500
01
#3275000
11
#3277500
01
#3280000
11
#3282500
01
#3285000
11
#3287500
01
#3290000
11
#3292500
01
#3295000
11
#3297500
01
#3300000
11
#3302500
01
#3305000
11
#3307500
01
#3310000
11
#3312500
01
#3315000
11
#3317500
01
#3320000
11
#3322500
01
#3325000
11
#3327500
01
#3330000
11
#3332500
01
#3335000
11
#3337500
01
#3340000
11
#3342500
01
#3345000
11
#3347500
01
#3350000
11
#3352500
01
#3355000
11
#3357500
01
#3360000
11
#3362500
01
#3365000
11
#3367500
01
#3370000
11
#3372500
01
#3375000
11
#3377500
01
#3380000
11
#3382500
01
#3385000
11
#3387500
01
#3390000
11
#3392500
01
#3395000
11
#3397500
01
#3400000
11
#3402500
01
#3405000
11
#3407500
01
#3410000
11
#3412500
01
#3415000
11
#3417500
01
#3420000
11
#3422500
01
#3425000
11
#3427500
01
#3430000
11
#3432500
01
#3435000
11
#3437500
01
#3440000
11
#3442500
01
#3445000
11
#3447500
01
#3450000
11
#3452500
01
#3455000
11
#3457500
01
#3460000
11
#3462500
01
#3465000
11
#3467500
01
#3470000
11
#3472500
01
#3475000
11
#3477500
01
#3480000
11
#3482500
01
#3485000
11
#3487500
01
#3490000
11
#3492500
01
#3495000
11
#3497500
01
#3500000
11
#3502500
01
#3505000
11
#3507500
01
#3510000
11
#3512500
01
#3515000
11
#3517500
01
#3520000
11
#3522500
01
#3525000
11
#3527500
01
#3530000
11
#3532500
01
#3535000
11
#3537500
01
#3540000
11
#3542500
01
#3545000
11
#3547500
01
#3550000
11
#3552500
01
#3555000
11
#3557500
01
#3560000
11
#3562500
01
#3565000
11
#3567500
01
#3570000
11
#3572500
01
#3575000
11
#3577500
01
#3580000
11
#3582500
01
#3585000
11
#3587500
01
#3590000
11
#3592500
01
#3595000
11
#3597500
01
#3600000
11
#3602500
01
#3605000
11
#3607500
01
#3610000
11
#3612500
01
#3615000
11
#3617500
01
#3620000
11
#3622500
01
#3625000
11
#3627500
01
#3630000
11
#3632500
01
#3635000
11
#3637500
01
#3640000
11
#3642500
01
#3645000
11
#3647500
01
#3650000
11
#3652500
01
#3655000
11
#3657500
01
#3660000
11
#3662500
01
#3665000
11
#3667500
01
#3670000
11
#3672500
01
#3675000
11
#3677500
01
#3680000
11
#3682500
01
#3685000
11
#3687500
01
#3690000
11
#3692500
01
#3695000
11
#3697500
01
#3700000
11
#3702500
01
#3705000
11
#3707500
01
#3710000
11
#3712500
01
#3715000
11
#3717500
01
#3720000
11
#3722500
01
#3725000
11
#3727500
01
#3730000
11
#3732500
01
#3735000
11
#3737500
01
#3740000
11
#3742500
01
#3745000
11
#3747500
01
#3750000
11
#3752500
01
#3755000
11
#3757500
01
#3760000
11
#3762500
01
#3765000
11
#3767500
01
#3770000
11
#3772500
01
#3775000
11
#3777500
01
#3780000
11
#3782500
01
#3785000
11
#3787500
01
#3790000
11
#3792500
01
#3795000
11
#3797500
01
#3800000
11
#3802500
01
#3805000
11
#3807500
01
#3810000
11
#3812500
01
#3815000
11
#3817500
01
#3820000
11
#3822500
01
#3825000
11
#3827500
01
#3830000
11
#3832500
01
#3835000
11
#3837500
01
#3840000
11
#3842500
01
#3845000
11
#3847500
01
#3850000
11
#3852500
01
#3855000
11
#3857500
01
#3860000
11
#3862500
01
#3865000
11
#3867500
01
#3870000
11
#3872500
01
#3875000
11
#3877500
01
#3880000
11
#3882500
01
#3885000
11
#3887500
01
#3890000
11
#3892500
01
#3895000
11
#3897500
01
#3900000
11
#3902500
01
#3905000
11
#3907500
01
#3910000
11
#3912500
01
#3915000
11
#3917500
01
#3920000
11
#3922500
01
#3925000
11
#3927500
01
#3930000
11
#3932500
01
#3935000
11
#3937500
01
#3940000
11
#3942500
01
#3945000
11
#3947500
01
#3950000
11
#3952500
01
#3955000
11
#3957500
01
#3960000
11
#3962500
01
#3965000
11
#3967500
01
#3970000
11
#3972500
01
#3975000
11
#3977500
01
#3980000
11
#3982500
01
#3985000
11
#3987500
01
#3990000
11
#3992500
01
#3995000
11
#3997500
01
#4000000
11
#4002500
01
#4005000
11
#4007500
01
#4010000
11
#4012500
01
#4015000
11
#4017500
01
#4020000
11
#4022500
01
#4025000
11
#4027500
01
#4030000
11
#4032500
01
#4035000
11
#4037500
01
#4040000
11
#4042500
01
#4045000
11
#4047500
01
#4050000
11
#4052500
01
#4055000
11
#4057500
01
#4060000
11
#4062500
01
#4065000
11
#4067500
01
#4070000
11
#4072500
01
#4075000
11
#4077500
01
#4080000
11
#4082500
01
#4085000
11
#4087500
01
#4090000
11
#4092500
01
#4095000
11
#4097500
01
#4100000
11
#4102500
01
#4105000
11
#4107500
01
#4110000
11
#4112500
01
#4115000
11
#4117500
01
#4120000
11
#4122500
01
#4125000
11
#4127500
01
#4130000
11
#4132500
01
#4135000
11
#4137500
01
#4140000
11
#4142500
01
#4145000
11
#4147500
01
#4150000
11
#4152500
01
#4155000
11
#4157500
01
#4160000
11
#4162500
01
#4165000
11
#4167500
01
#4170000
11
#4172500
01
#4175000
11
#4177500
01
#4180000
11
#4182500
01
#4185000
11
#4187500
01
#4190000
11
#4192500
01
#4195000
11
#4197500
01
#4200000
11
#4202500
01
#4205000
11
#4207500
01
#4210000
11
#4212500
01
#4215000
11
#4217500
01
#4220000
11
#4222500
01
#4225000
11
#4227500
01
#4230000
11
#4232500
01
#4235000
11
#4237500
01
#4240000
11
#4242500
01
#4245000
11
#4247500
01
#4250000
11
#4252500
01
#4255000
11
#4257500
01
#4260000
11
#4262500
01
#4265000
11
#4267500
01
#4270000
11
#4272500
01
#4275000
11
#4277500
01
#4280000
11
#4282500
01
#4285000
11
#4287500
01
#4290000
11
#4292500
01
#4295000
11
#4297500
01
#4300000
11
#4302500
01
#4305000
11
#4307500
01
#4310000
11
#4312500
01
#4315000
11
#4317500
01
#4320000
11
#4322500
01
#4325000
11
#4327500
01
#4330000
11
#4332500
01
#4335000
11
#4337500
01
#4340000
11
#4342500
01
#4345000
11
#4347500
01
#4350000
11
#4352500
01
#4355000
11
#4357500
01
#4360000
11
#4362500
01
#4365000
11
#4367500
01
#4370000
11
#4372500
01
#4375000
11
#4377500
01
#4380000
11
#4382500
01
#4385000
11
#4387500
01
#4390000
11
#4392500
01
#4395000
11
#4397500
01
#4400000
11
#4402500
01
#4405000
11
#4407500
01
#4410000
11
#4412500
01
#4415000
11
#4417500
01
#4420000
11
#4422500
01
#4425000
11
#4427500
01
#4430000
11
#4432500
01
#4435000
11
#4437500
01
#4440000
11
#4442500
01
#4445000
11
#4447500
01
#4450000
11
#4452500
01
#4455000
11
#4457500
01
#4460000
11
#4462500
01
#4465000
11
#4467500
01
#4470000
11
#4472500
01
#4475000
11
#4477500
01
#4480000
11
#4482500
01
#4485000
11
#4487500
01
#4490000
11
#4492500
01
#4495000
11
#4497500
01
#4500000
11
#4502500
01
#4505000
11
#4507500
01
#4510000
11
#4512500
01
#4515000
11
#4517500
01
#4520000
11
#4522500
01
#4525000
11
#4527500
01
#4530000
11
#4532500
01
#4535000
11
#4537500
01
#4540000
11
#4542500
01
#4545000
11
#4547500
01
#4550000
11
#4552500
01
#4555000
11
#4557500
01
#4560000
11
#4562500
01
#4565000
11
#4567500
01
#4570000
11
#4572500
01
#4575000
11
#4577500
01
#4580000
11
#4582500
01
#4585000
11
#4587500
01
#4590000
11
#4592500
01
#4595000
11
#4597500
01
#4600000
11
#4602500
01
#4605000
11
#4607500
01
#4610000
11
#4612500
01
#4615000
11
#4617500
01
#4620000
11
#4622500
01
#4625000
11
#4627500
01
#4630000
11
#4632500
01
#4635000
11
#4637500
01
#4640000
11
#4642500
01
#4645000
11
#4647500
01
#4650000
11
#4652500
01
#4655000
11
#4657500
01
#4660000
11
#4662500
01
#4665000
11
#4667500
01
#4670000
11
#4672500
01
#4675000
11
#4677500
01
#4680000
11
#4682500
01
#4685000
11
#4687500
01
#4690000
11
#4692500
01
#4695000
11
#4697500
01
#4700000
11
#4702500
01
#4705000
11
#4707500
01
#4710000
11
#4712500
01
#4715000
11
#4717500
01
#4720000
11
#4722500
01
#4725000
11
#4727500
01
#4730000
11
#4732500
01
#4735000
11
#4737500
01
#4740000
11
#4742500
01
#4745000
11
#4747500
01
#4750000
11
#4752500
01
#4755000
11
#4757500
01
#4760000
11
#4762500
01
#4765000
11
#4767500
01
#4770000
11
#4772500
01
#4775000
11
#4777500
01
#4780000
11
#4782500
01
#4785000
11
#4787500
01
#4790000
11
#4792500
01
#4795000
11
#4797500
01
#4800000
11
#4802500
01
#4805000
11
#4807500
01
#4810000
11
#4812500
01
#4815000
11
#4817500
01
#4820000
11
#4822500
01
#4825000
11
#4827500
01
#4830000
11
#4832500
01
#4835000
11
#4837500
01
#4840000
11
#4842500
01
#4845000
11
#4847500
01
#4850000
11
#4852500
01
#4855000
11
#4857500
01
#4860000
11
#4862500
01
#4865000
11
#4867500
01
#4870000
11
#4872500
01
#4875000
11
#4877500
01
#4880000
11
#4882500
01
#4885000
11
#4887500
01
#4890000
11
#4892500
01
#4895000
11
#4897500
01
#4900000
11
#4902500
01
#4905000
11
#4907500
01
#4910000
11
#4912500
01
#4915000
11
#4917500
01
#4920000
11
#4922500
01
#4925000
11
#4927500
01
#4930000
11
#4932500
01
#4935000
11
#4937500
01
#4940000
11
#4942500
01
#4945000
11
#4947500
01
#4950000
11
#4952500
01
#4955000
11
#4957500
01
#4960000
11
#4962500
01
#4965000
11
#4967500
01
#4970000
11
#4972500
01
#4975000
11
#4977500
01
#4980000
11
#4982500
01
#4985000
11
#4987500
01
#4990000
11
#4992500
01
#4995000
11
#4997500
01
#5000000
11
#5002500
01
#5005000
11
#5007500
01
#5010000
11
#5012500
01
#5015000
11
#5017500
01
#5020000
11
#5022500
01
#5025000
11
#5027500
01
#5030000
11
#5032500
01
#5035000
11
#5037500
01
#5040000
11
#5042500
01
#5045000
11
#5047500
01
#5050000
11
#5052500
01
#5055000
11
#5057500
01
#5060000
11
#5062500
01
#5065000
11
#5067500
01
#5070000
11
#5072500
01
#5075000
11
#5077500
01
#5080000
11
#5082500
01
#5085000
11
#5087500
01
#5090000
11
#5092500
01
#5095000
11
#5097500
01
#5100000
11
#5102500
01
#5105000
11
#5107500
01
#5110000
11
#5112500
01
#5115000
11
#5117500
01
#5120000
11
#5122500
01
#5125000
11
#5127500
01
#5130000
11
#5132500
01
#5135000
11
#5137500
01
#5140000
11
#5142500
01
#5145000
11
#5147500
01
#5150000
11
#5152500
01
#5155000
11
#5157500
01
#5160000
11
#5162500
01
#5165000
11
#5167500
01
#5170000
11
#5172500
01
#5175000
11
#5177500
01
#5180000
11
#5180001
b1000 n
b10000 o
b1000 ?-
b10000 @-
03
#5182501
01
#5185001
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5187501
01
#5190001
11
13
#5192501
01
#5195001
11
#5197501
01
#5200001
11
b11111010 -
b1 ,
1.
#5202501
01
#5205001
b11001010 -
b10 ,
11
#5207501
01
#5210001
b11010110 -
b11 ,
11
#5212501
01
#5215001
b1101 -
b100 ,
11
#5217501
01
#5220001
b11010010 -
b101 ,
11
#5222501
01
#5225001
b100100 -
b110 ,
11
#5227501
01
#5230001
b11001111 -
b111 ,
11
#5232501
01
#5235001
b101011 -
b1000 ,
11
#5237501
01
#5240001
b11011011 -
b1001 ,
11
#5242501
01
#5245001
b111101 -
b1010 ,
11
#5247501
01
#5250001
b101100 -
b1011 ,
11
#5252501
01
#5255001
b11011110 -
b1100 ,
11
#5257501
01
#5260001
b11110100 -
b1101 ,
11
#5262501
01
#5265001
b110 -
b1110 ,
11
#5267501
01
#5270001
b101101 -
b1111 ,
11
#5272501
01
#5275001
11
#5275002
b1000 n
b10000 o
b1000 ?-
b10000 @-
03
#5277502
01
#5280002
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5282502
01
#5285002
11
13
#5287502
01
#5290002
11
#5292502
01
#5295003
b1000 n
b10000 o
b1000 ?-
b10000 @-
11
03
#5297503
01
#5300003
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5302503
01
#5305003
11
13
#5307503
01
#5310003
11
#5312503
01
#5315004
b1000 n
b10000 o
b1000 ?-
b10000 @-
11
03
#5317504
01
#5320004
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5322504
01
#5325004
11
13
#5327504
01
#5330004
11
#5332504
01
#5335005
b1000 n
b10000 o
b1000 ?-
b10000 @-
11
03
#5337505
01
#5340005
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5342505
01
#5345005
11
13
#5347505
01
#5350005
11
#5352505
01
#5355006
b1000 n
b10000 o
b1000 ?-
b10000 @-
11
03
#5357506
01
#5360006
b10000 @-
b1000 ?-
b10000 o
b1000 n
11
#5362506
01
#5365006
11
13
#5367506
01
#5370006
11
#5372506
01
#5375006
