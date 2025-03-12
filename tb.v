module tb; // Esse módulo é chamado testbench e serve para testar o circuito somador

  reg [3:0] a, b; // registradores auxiliares a e b 
  wire [3:0] soma; // sinal extra para coletar o resultado

  somador uut( // instancia o módulo somador e liga os sinais internos aos sinais do componente
    .a(a),
    .b(b),
    .soma(soma)
  );

  initial begin // Aqui temos uma sequência de testes individuais
    // O comando monitor imprimirá uma linha cada vez que um dos sinais for alterado
    $monitor("a = %b, b = %b, soma = %b", a, b, soma); 
    // Cada teste é uma sequência de valoers de a e b (entradas), seguidos de uma linha que aguarda 1 unidade de tempo
    // Teste 1
    a = 0; // Valor 0 em a
    b = 1; // Valor 1 em b
    #1;    // Aguarda 1 unidade de tempo
    // Teste 2
    a = 2; // Valor 2 em a
    b = 3; // Valor 3 em b
    #1;    // Aguarda 1 unidade de tempo
    // Teste 3
    a = 6; // Valor 6 em a
    b = 8; // Valor 8 em b
    #1;    // Aguarda 1 unidade de tempo
    // Teste 4
    a = 10; // Valor 10 em a
    b = 5;  // Valor 5 em b
    #1;     // Aguarda 1 unidade de tempo
    // Teste 5
    a = 8; // Valor 8 em a
    b = 8; // Valor 8 em b 
    #1;    // Aguarda 1 unidade de tempo
    // Teste 6
    a = 0; // Valor 0 em a
    b = 0; // Valor 0 em b
    #1;    // Aguarda 1 unidade de tempo
    // Teste 7
    a = 15; // Valor 15 em a
    b = 1;  // Valor 1 em b
    #1;     // Aguarda 1 unidade de tempo
    // Teste 8
    a = 9; // Valor 9 em a 
    b = 8; // Valor 8 em b
    #1;    // Aguarda 1 unidade de tempo
  end
endmodule
