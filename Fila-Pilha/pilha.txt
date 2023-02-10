void main() {
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