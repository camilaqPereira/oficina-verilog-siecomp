/*
Somador de 1 bit 
Autor: Camila Boa Morte
Descricao: Este modulo descreve um somador completo de 1 bit utilizando o modelo comportamental

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/
module somador1Bit_comportamental(output reg S, output reg Cout, input A, input B, input Cin);
	
	
	always @ (*) begin
	
		{Cout, S} = A + B + Cin;

	end

endmodule
