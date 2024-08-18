/*
Registrador de deslocamento (incorreto)
Autor: Camila Boa Morte
Descricao: Este modulo descreve incorretamente um registrador de deslocamento em verilog comportamental.
O registrador não funciona da forma correta, pois utilizou-se a atribuicao bloqueante na descricao
do circuito sequencial

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module blocking_assign(input clk, input a, output reg out); //declaracao de portas
	/* Declaracao de tipos*/
	reg x,y;
	
	/* Funcionamento do circuito*/
	always @ (negedge clk) begin
		x = a;
		y = x;
		out = y;
	
	end


endmodule
