// Test bench to test the functionality of a 64 bit adder and subtractor

`timescale 1ns/10ps

module addsub_tb();

reg signed[63:0]in1;
reg signed[63:0]in2;
reg M;

wire signed[63:0]sum;
wire overflow;

addsub_ a_s (in1, in2, M, sum, overflow);

initial
    begin

        $dumpfile("addsub_tb.vcd");
        $dumpvars(0, addsub_tb);

        in1=64'd0;
        in2=64'd0;
        M=0;

    end

initial 
begin

    $monitor($time, " in1 = %b = %d\n\t\t     in2 = %b = %d\n\t\t     M = %d\n\t\t     SUM = %b = %d\n\t\t    overflow = %b\n", in1, in1, in2, in2, M, sum, sum, overflow);

    #10 in1 =  64'd9223372036854775807; in2 = 64'd9223372036854775807; M = 0;
    #10 in1 =  64'b111111; in2 = -64'b111111; M = 0;
    #10 in1 = -64'b111001; in2 =  64'b110010; M = 0;
    #10 in1 = -64'b1000100100111; in2 = -64'b111111111111000; M = 0;
    

    #10 in1 =  64'b100001; in2 =  64'b100001; M = 1;
    #10 in1 =  64'b111111; in2 = -64'b111111; M = 1;
    #10 in1 = -64'd9223372036854775807; in2 = 64'd9223372036854775807; M = 1;
    #10 in1 = -64'b1000100100111; in2 = -64'b111111111111000; M = 1;
    
    $finish;
end
endmodule