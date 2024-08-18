/*
Somador de 1 bit com assign (metodo 1)
Autor: Camila Boa Morte
Descricao: Este modulo descreve um somador completo de 1 bit utilizando atribuicao continua

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module somador1Bit_assign(S, Cout, A, B, Cin);

	/*Declaracao dos tipos de portas */
	input A, B, Cin;
	output S, Cout;
	
	/* Declaracao de tipos */
	wire T1, T2, T3; //Declaracao de wires
	
	/*Funcionamento do circuito */
	
	//Intermediarios
	assign T1 = A ^ B;
	assign T2 = A & B;
	assign T3 = T1 & Cin;
	
	//Saidas
	assign Cout = T2 | T3;
	assign S = T1 ^ Cin;

endmodule
