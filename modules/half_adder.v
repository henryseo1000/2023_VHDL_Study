// Half Adder Circuit Test Bench
// Md. Nahidul Islam
// 27 - Jun - 2021
module half_adder (A , B , S , C );
         input A , B; 
         output S , C;
         xor ( S , A , B );
         and ( C , A , B );
endmodule

module full_adder(fco, fsum, cin, a, b); 
    output fco, fsum;
    input cin, a, b;
    wire c1, s1, c2;
    half_adder u1 (c1, s1, a, b);
    half_adder u2 (.a(s1), .b(cin), .sum(fsum), .co(c2)); 
    or u3 (fco, c1, c2);
endmodule