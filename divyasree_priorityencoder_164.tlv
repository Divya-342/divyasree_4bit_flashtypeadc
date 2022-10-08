\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/  /* verilator lint_off LATCH*/  /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off NULLPORT*/  /* verilator lint_off EOFNEWLINE*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  /* verilator lint_off */  

//Your Verilog/System Verilog Code Starts Here:
module divyasree_priorityencoder_164(en,i,y);
input en;
input [15:0];
output reg[3:0]y;
always@(en,i)
begin
   if(en==1)
      begin
 	if(i[15]==1) y=4'b1111;
	else if(i[14]==1) y=4'b1110;
	else if(i[13]==1) y=4'b1101;
	else if(i[12]==1) y=4'b1100;
	else if(i[11]==1) y=4'b1011;
	else if(i[10]==1) y=4'b010;
	else if(i[9]==1) y=4'b1001;
        else if(i[8]==1) y=4'b1000;
	else if(i[7]==1) y=4'b0111;
	else if(i[6]==1) y=4'b0110;
	else if(i[5]==1) y=4'b0101;
	else if(i[4]==1) y=4'b0100;
	else if(i[3]==1) y=4'b0011;
	else if(i[2]==1) y=4'b0010;
	else if(i[1]==1) y=4'b0001;
	else
	y=4'b0000;
     end
	else y=4'bZZZZ;
end
endmodule
	


	
	


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  en;//input
		logic reg [3:0] y;//output
//The $random() can be replaced if user wants to assign values
		assign en = $random();
		divyasree_priorityencoder_164 divyasree_priorityencoder_164(.en(en), .y(y));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule

