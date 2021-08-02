void main() {
  // 1° Colchetes
  List<String> listaDeLivros = []; // Vazia
  List<String> listaDeLinguagens = [
    "Java",
    "C#",
    "Python",
    "PHP",
    "Ruby",
  ];

  // 2° Construtor
  List<int> numeros = List.empty(growable: true);

  // Adição de elementos
  listaDeLinguagens.add("Dart");
  numeros.add(1);
  numeros.add(2);
  numeros.add(14);

  // print(numeros.length);

  List<int> pares = List.generate(10, (valor) => valor * 2, growable: true);

  // List.copyRange(numeros, 2, pares);

  // numeros = List.filled(20, 1);

  // pares.add(19);
  // print(pares);

  // Remover pelo indice
  // pares.removeAt(2);
  // print(pares);

  // Pegar um elemento
  // print(pares[2]);
  // print(pares.elementAt(2));

  bool resultado = pares.every((elemento) => elemento % 2 == 0);

  print(resultado);
}

bool ePar(List<num> numeros) {
  return true;
}
