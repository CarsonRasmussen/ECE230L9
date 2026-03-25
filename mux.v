module mux(
input [7:0] A, [7:0] B, [7:0] C, [7:0] D, Enable, [1:0] Sel,
output [7:0] Y
);

assign Y = Enable ? (Sel == 'b00 ? A:
                     Sel == 'b01 ? B:
                     Sel == 'b10 ? C:
                     Sel == 'b11 ? D: 0) : 0;

endmodule
