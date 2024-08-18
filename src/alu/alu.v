/*
ULA
Autor: Camila Boa Morte
Descricao: Este modulo descreve uma ULA simplificada que realiza as operações de soma e subtração.
A selecao da operacao a ser realizada e realziada por meio do input control_signal (0 indica uma soma). Esta iplementacao nao
gerencia overflows e underflows.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module alu(control_signal, op1, op2, result);
	/* Declaracao de portas*/
	input control_signal;
	input [7:0] op1, op2;
	output reg [7:0] result;
	
	/* Funcionamento do circuito*/
	always @ (*) begin
		
		if(control_signal == 1'b0) begin
			result = op1 + op2;				
		end
		else begin
			result = op1 - op2;
		end		
	
	end
	
	

endmodule
