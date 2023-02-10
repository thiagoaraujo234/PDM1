void main() {
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