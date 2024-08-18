/*
Detector de sequencia
Autor: Camila Boa Morte
Descricao: Este modulo descreve detector de sequencia que recebe como input w e gera como saída z.
A saida z e alta se e somente se a sequencia 11 ou 00 forem detectadas na entrada.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module atividade4(input clk, input w, output z); //declaracao de portas

	/* Declaracao de tipos e parametros*/
	localparam A = 0, B = 1, C = 2, D = 3, E = 4;
	
	reg [2:0] state, next_state;
	
	/* Funcionamento do circuito*/
	
	//fli flops
	always @ (posedge clk) begin
		state <= next_state;
	end
	
	//circuito combinacional para geracao do proximo estado
	always @ (*) begin
		case(state)
			A: begin
				if (w==0) next_state = B;
				else next_state = D;
			end
			B: begin
				if (w==0) next_state = C;
				else next_state = D;
			end
			C: begin
				if (w==0) next_state = C;
				else next_state = D;
			end
			D: begin
				if (w==0) next_state = B;
				else next_state = E;
			end
			E: begin
				if (w==0) next_state = B;
				else next_state = E;
			end
			default: next_state = A;
		endcase
	end

	//circuito combinacional para geracao da saida
	assign z = (state == C && state == E) ? 1 : 0;
endmodule
