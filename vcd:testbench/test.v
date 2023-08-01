module tb_half_adder();
reg a , b ;
wire s , c;

half_adder ckt(a,b,s,c);

initial 
begin
	a = 1'b0;
	b = 1'b0;
	#100
	a = 1'b1; 
	b = 1'b0;
	#100
	a = 1'b0; 
	b = 1'b1;
	#100
	a = 1'b1;
	b = 1'b1;
end 

initial begin
    $dumpfile("tb_half_adder.vcd") ;
    $dumpvars(0, tb_half_adder);
end
endmodule