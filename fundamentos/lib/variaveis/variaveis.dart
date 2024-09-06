void main() {
//<tipo> nome;
// nome = atribuição

//fortemente tipada

// na declaração das variaveis

  String nome = "Alunos que reclamam";

  int idade;
  idade = 10;

  double cotacaoDolar = 5.64;

//Interpolação de String
  print("Nome ${nome} -  Idade ${idade}");

//Concatenação de Strings
  print("Nome" + nome + " - Idade " + idade.toString());

/*Por ser fortemente tipado não permite  atribuir um valor que não pertence ao tipo da variável*/
//idade = "Numero nove";

/*Por ser fortemente tipado não permite  atribuir um valor que gera perda de precisão  da informação*/
//idade = "1.5";
  idade = 5;
  cotacaoDolar = 5.0;

//Nome da variavel não usar caracteres especiais, espaços ou
// palavra reservadas
//https://dart.dev/language/keywords

//palavra reservada var é ultilizada em Dart para declarar uma variável
//com o tipo inferido
  var idadeInferido = 1;
  idadeInferido = 20;

  // idadeInferido = 1.5;

  print("Idade ${idadeInferido}");

//aceita qualquer coisa
  dynamic tipoMae;
  tipoMae = 10;
  tipoMae = "String";
/* Object é a classe base de todos os objetos Isso significa que todos os tipos em Dart, icluindo os tipos primitivos, são do tipo Object */

  Object tipoMaeDasMaes;
  tipoMaeDasMaes = 20; 
  tipoMaeDasMaes = 20.5;
  tipoMaeDasMaes = "20.5";

  //Evie tipos  Object ou Dynamic, pois podera ocorrer um erro em tempo de execução
  tipoMae += 10;
  
  print("Valor da variável tipoMae ${tipoMae}");


}
