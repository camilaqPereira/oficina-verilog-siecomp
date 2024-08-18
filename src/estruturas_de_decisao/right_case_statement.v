/*
Mux 6 para 1 (forma coreta)
Autor: Camila Boa Morte
Descricao: Este modulo descreve um multiplexador 6 para 1 em verilog comportamental.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/
module right_case_statement(input [5:0] a, input [2:0] sel, output reg out); //declaracao de portas

	/* Funcionamento do circuito*/
	always @ (*) begin
		case(sel)
			3'b000: out = a[0];
			3'b001: out = a[1];
			3'b010: out = a[2];
			3'b011: out = a[3];
			3'b100: out = a[4];
			3'b101: out = a[5];
			default: out = 1'b0;
		endcase
	end

endmodule