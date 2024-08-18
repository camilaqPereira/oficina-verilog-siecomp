/*
Registrador de deslocamento
Autor: Camila Boa Morte
Descricao: Este modulo descreve um registrador de deslocamento (com sinal de reset) em verilog comportamental

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/
module nonblocking_assign_reset(input a, input clk, input rst, output reg out); //declaracao de portas
	/* Declaracao de tipos
	reg x, y;
	
	/* Funcionamento do circuito*/
	always @ (negedge clk, posedge rst) begin
		if(rst == 1'b1) begin
			x <= 0;
			y <= 0;
			out <= 0;
		end else begin
			x <= a;
			y <= x;
			out <= y;
		end
	end


endmodule
