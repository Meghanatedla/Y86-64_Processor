`include "ADDSUB/addsub.v"
`include "AND/and.v"
`include "XOR/xor.v"

module alu_(inp1, inp2, op, out, overflow);
	input signed [63:0] inp1, inp2;
	input  [1:0] op;
	output signed [63:0] out;
	output overflow;

	wire signed [63:0] out_add, out_sub, out_and, out_xor;
    reg signed [63:0] ans;
	reg overflow_;

	addsub_ add (inp1, inp2, 1'b0, out_add, overflow1);
	addsub_ sub (inp1, inp2, 1'b1, out_sub, overflow2);
	and_ a1 (inp1, inp2, out_and);
	xor_ x1 (inp1, inp2, out_xor);

    always@(*)
    begin
		if(op==2'b00) 
		begin
			ans = out_add;
			overflow_ = overflow1;
		end
		else if(op == 2'b01) 
		begin
			ans = out_sub;
			overflow_ = overflow2;
		end
        else if(op == 2'b10) 
            ans = out_and;
        else if(op == 2'b11)
            ans = out_xor;
    end
	
    assign out = ans;
	assign overflow = overflow_;

endmodule

