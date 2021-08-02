import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listaDeClientes = [];

  static void cadastrar(Pessoa cliente) {
    _listaDeClientes.add(cliente);
  }

  static Iterable<Pessoa> buscar(String? email) {
    return _listaDeClientes.where((cliente) => cliente.email == email);
  }

  static void editar(Pessoa vCliente) {
    bool localizado = _listaDeClientes.contains(vCliente);

    if(localizado) {
      var clientes = buscar(vCliente.email);
      for (Pessoa antigo in clientes) {
        antigo.endereco = vCliente.endereco;
        antigo.telefoneParaContato = vCliente.telefoneParaContato;
      }
    }
  }

  static void remover(String email) {
    _listaDeClientes.removeWhere((cliente) => cliente.email == email);
  }
}