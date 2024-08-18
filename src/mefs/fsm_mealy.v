/*
Detector de sequencia
Autor: Camila Boa Morte
Descricao: Este modulo descreve detector de sequencia que recebe como input w e gera como saída z.
A saida z e alta se e somente se a sequencia 11 for detectada na entrada.

XXXI SIECOMP - Oficina Introducao ao Verilog Comportamental
*/

module fsm_mealy(input clk, input w, input rst, output z); //declaracao de portas

	/* Declaracao de tipos e parametros*/
	localparam A = 0, B = 1;
	reg state, next_state;
	
	
	/* Funcionamento do circuito*/
	
	//fli flops
	always @ (posedge clk, posedge rst) begin
		if(rst == 1) state <= A;
		else state <= next_state;
	end
	
	//circuito combinacional para geracao do proximo estado
	always @ (*) begin
		case(state)
			A: begin
				if(w == 1) next_state = B;
				else if(w==0) next_state = A;
			end
			B: begin
				if(w == 1) next_state = B;
				else if(w==0) next_state = A;
			end
			default: next_state = A;
		endcase
	
	end
	
	//circuito combinacional para geracao da saida
	assign z = (state == B && w == 1) ? 1 : 0;
	

endmodule
