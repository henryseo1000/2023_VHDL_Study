module decoder (A , B , D0, D1, D2, D3 );
        input A , B; 
        output D0, D1, D2, D3;

        wire a1, b1;

        not ( a1, A );
        not ( b1, B );
        and (D0, b1, a1);
        and (D1, B, a1);
        and (D2, b1, A);
        and (D3, B, A);
endmodule

module tb_2x4_decoder();
reg a , b ;
wire d0, d1, d2, d3;

decoder ckt(a,b,d0,d1,d2,d3);

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
    $dumpfile("tb_2x4_decoder.vcd") ;
    $dumpvars(0, tb_2x4_decoder);
end
endmodule