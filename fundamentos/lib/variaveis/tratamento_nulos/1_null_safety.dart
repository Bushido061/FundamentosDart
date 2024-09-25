void main(List<String>args){

  String nomeNonNullSafety ;
  nomeNonNullSafety = '';

  
  print('Está vazia ${nomeNonNullSafety.isEmpty}');

String? nomeNullSafety ;
if(nomeNullSafety != null){
print('nomeNullsafety Está vazia ${nomeNullSafety.isEmpty}');
}

String? nomeNullSafety1 = '';
//ignora as validações do null safety e vc fica responsável em garantir 
//que a variável não está nula
print(' nomeNullSafety1 Está vazia ${nomeNullSafety1!.isEmpty}');

String? nomeNullSafety2 ;
//?? é um operador ternário. Se a variável estiver nula, executará a expressão
//do lado  direito do operador ??
print(' nomeNullSafety2  Está vazia ${nomeNullSafety2?.isEmpty ?? 'Não preenchido'}');
print(' nomeNullSafety2  Está vazia ${nomeNullSafety2?.isEmpty ?? true}');


String? nomeNullSafety3 ;
//?? é um operador ternário. Se a variável estiver nula, executará a expressão
//do lado  direito do operador ??
nomeNullSafety3 = 'Fulano';
print(' nomeNullSafety3  Está vazia ${nomeNullSafety3?.isEmpty ?? 'Não preenchido'}');
print(' nomeNullSafety3  Está vazia ${nomeNullSafety3?.isEmpty ?? true}');

}