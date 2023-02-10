import 'dart:io';

void main() {
  
  print("Qual exemplo deseja?\n 1 - Fila \n 2 - Pilha");
  int? n = int.parse(stdin.readLineSync()!);
  
  if(n == 1){
  fila();
  }
  else if (n == 2){
  pilha();
  }
  else{
    print("Valor invalido");
  }
}
void fila() {
  
print("-- Exemplo de Fila -- ");
 var fila = [];
    
  for (int i = 0; i < 5; i++) {
    fila.add(i);
    print('Elemento ${fila}');
  }
  for (int i = 0; i < 5; i++) {
    fila.remove(i);
    print('Elemento ${fila}');
  }
}

void pilha(){
  
 print("-- Exemplo de Pilha -- ");
  var pilha = [];
    
  for (int i = 0; i < 5; i++) {
    pilha.add(i);
    print('Elemento ${pilha}');
  }
  for (int i = 5; i > 0; i--) {
    pilha.remove(i);
    print('Elemento ${pilha}');
  }
}
