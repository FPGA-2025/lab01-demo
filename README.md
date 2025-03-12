# Laboratório de Exemplo de Verilog

O objetivo desse laboratório é mostrar como fazer um projeto simples em Verilog.

No caso, o projeto é um somador de 4 bits, que recebe dois números de 4 bits e retorna a soma deles.

## Passo a passo

### Passo 1

Abra o arquivo `somador.v` e procure entender os pedaços do código Verilog. Posteriormente entraremos em detalhes sobre eles. Por hora, olhe apenas a documentação.

### Passo 2

O código está praticamente pronto, apenas existe um comentário na parte da implementação, na linha indicada. Se você remover esse comentário, o código deve compilar sem erros.

### Passo 3

O código pode ser compilado com o comando `iverilog`. Para facilitar sua implementação, existe um script chamado `run.sh` que não só compila como também executa os testes. Execute o script. Ele deve imprimir uma mensagem de sucesso.

## Como funciona o código?

Você tem uma descrição em Verilog que é convertida em um programa capaz de simular o circuito. Para que o circuito seja verificado, é necessário que sejam feitos testes. No nosso exemplo simples, os testes nada mais são que pares de entradas e aguardar um tempo para a saída ser gerada.

Todas as saídas são impressas na tela mas o script `run.sh` as salva dentro da pasta test. Esse arquivo de saída será comparado com o arquivo de saída esperado. Caso os dois sejam iguais, o teste será considerado bem sucedido.
