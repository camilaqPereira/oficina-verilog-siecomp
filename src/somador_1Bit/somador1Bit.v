/*
Somador de 1 bit
Autor: Camila Boa Morte
Descricao: Este modulo descreve um somador completo de 1 bit em verilog estrutural

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module somador1Bit(S, Cout, A, B, Cin); //lista de portas
	
	/*Declaracao dos tipos de portas */
	input A, B, Cin;
	output S, Cout;
	
	/* Declaracao de tipos */
	wire T1, T2, T3; //Declaracao de wires
	
	/* Funcionamento do circuito*/ 
	
	//Intermediarios
	xor Xor0(T1, A, B);
	and And0(T2, A, B);
	and And1(T3, T1, Cin);
	
	//Saidas
	or Or0(Cout, T2, T3);
	xor Xor1 (S, T1, Cin);
endmodule
