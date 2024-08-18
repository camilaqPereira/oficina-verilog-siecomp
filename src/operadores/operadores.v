/*
Aplicacao de operadores
Autores: Camila Boa Morte
Descricao: Este modulo implementa um exemplo de funcionamento dos operadores de 
de concatenacao, replicacao e deslocamento
por meio da associacao de 5 somadores completos de 1 bit.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module operadores(input [5:0] Dataa, input[5:0] Datab, output reg [5:0] Out1,  output reg [17:0] Out2, output reg [5:0] Out3);

 reg [5:0] temp;
 
 always @ (*) begin
	temp = {Dataa[2:0], Datab[2:0]};
	Out1 = temp;
	Out2 = {3{temp}};
	Out3 = temp << 2;
 end
endmodule

