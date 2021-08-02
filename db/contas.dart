import '../conta.dart';

class Contas {
  static List<Conta> _listaDeContas = [];

  static void cadastrar(Conta conta) {
    _listaDeContas.add(conta);
  }

  static Iterable<Conta> buscar(String numero) {
    return _listaDeContas.where((conta) => conta.numero == numero);
  }

  static void editar(Conta vConta) {
    bool localizado = _listaDeContas.contains(vConta);

    if(localizado) {
      var contas = buscar(vConta.numero);
      for (Conta antigo in contas) {
        antigo.agencia = vConta.agencia;
      }
    }
  }

  static void remover(String numero) {
    _listaDeContas.removeWhere((conta) => conta.numero == numero);
  }
}