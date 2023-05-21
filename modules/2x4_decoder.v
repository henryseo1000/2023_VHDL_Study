module 2x4_decoder (A , B , D0 , D1, D2, D3 );
        input A , B; 
        output S , C;

        wire a1, b1;

        not ( a1, A );
        not ( b1, B );
        and (D0, b1, a1);
        and (D1, B, a1);
        and (D2, b1, A);
        and (D3, B, A);
endmodule