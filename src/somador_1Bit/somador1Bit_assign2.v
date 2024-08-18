/*
Somador de 1 bit com assign (método 2)
Autor: Camila Boa Morte
Descricao: Este modulo descreve um somador completo de 1 bit utilizando atribuicao continua

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module somador1Bit_assign2(S, Cout, A, B, Cin);

	/*Declaracao dos tipos de portas */
	input A, B, Cin;
	output S, Cout;
	
	/* Funcionamento do circuito */
	
	assign {Cout, S} = A + Cin + B;

endmodule
