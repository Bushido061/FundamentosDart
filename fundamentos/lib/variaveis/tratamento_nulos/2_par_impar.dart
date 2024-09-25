import 'dart:io';

void main(List<String> args){
  print(" Informe o número: ");
  final numero = stdin.readLineSync();
  if(numero !=null && int.tryParse(numero) !=null){
  final numeroConvetido = int.tryParse(numero);
//   if(numeroConvetido! % 2 == 0){
//     print("Número par ");
//   }else{

//   print("Número Impar");
// }

    print("Número ${numeroConvetido! % 2 == 0? 'Par': 'Impar'}");

}else{
  print('Número inteiro inválido. Ajuda eu fi');

}
}
  