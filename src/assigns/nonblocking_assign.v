/*
Registrador de deslocamento
Autor: Camila Boa Morte
Descricao: Este modulo descreve um registrador de deslocamento (sem sinal de reset) em verilog comportamental

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/
module nonblocking_assign(input a, input clk, output reg out); //declaracao de portas
	/* Declaracao de tipos*/
	reg x, y;
	
	/* Funcionamento do circuito*/
	always @ (negedge clk) begin
		x <= a;
		y <= x;
		out <= y;
	end


endmodule
