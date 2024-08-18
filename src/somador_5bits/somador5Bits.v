/*
Somador de 5 bits
Autores: Camila Boa Morte
Descricao: Este modulo descreve um somador completo de 5 bits  em Verilog estrutural
por meio da associacao de 5 somadores completos de 1 bit.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module somador5Bits (num1, num2, s, cout);
	/* Declaracao de portas */
	input wire [4:0] num1, num2;
	output wire [4:0] s;
	output wire cout;
	
	/* Declaracao de tipos*/
	//Declaracao de wires
	wire co0,co1,co2,co3;
	wire cin0, not0;
	
	/* Funcionamento do circuito */
	not(not0, num1[0]);
	and(cin0, num1[0], not0); //saida sempre baixa
	
	
	//somador dos bits na posicao 0
	
	somador1Bit soma0 (
		.S(s[0]),
		.Cout(co0),
		.A(num1[0]),
		.B(num2[0]),
		.Cin(cin0)
	
	);
	
	//soma dos bits na posicao 1
	
	somador1Bit soma1 (
		.S(s[1]),
		.Cout(co1),
		.A(num1[1]),
		.B(num2[1]),
		.Cin(co0)
	
	);
	
	//soma dos bits na posicao 2
	
	somador1Bit soma2 (
		.S(s[2]),
		.Cout(co2),
		.A(num1[2]),
		.B(num2[2]),
		.Cin(co1)
	
	);
	
	//soma dos bits na posicao 3
	
	somador1Bit soma3 (
		.S(s[3]),
		.Cout(co3),
		.A(num1[3]),
		.B(num2[3]),
		.Cin(co2)
	
	);
	
	//soma dos bits na posicao 4
	
	somador1Bit soma4 (
		.S(s[4]),
		.Cout(cout),
		.A(num1[4]),
		.B(num2[4]),
		.Cin(co3)
	
	);
	
endmodule
