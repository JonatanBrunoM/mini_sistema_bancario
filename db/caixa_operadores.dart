import '../caixa_operador.dart';

class CaixaOperadores {
  static List<CaixaOperador> _listaDeCaixaOperadores = [];

  static void cadastrar(CaixaOperador caixaOperador) {
    _listaDeCaixaOperadores.add(caixaOperador);
  }

  static Iterable<CaixaOperador> buscar(int matricula) {
    return _listaDeCaixaOperadores.where((caixaOperador) => caixaOperador.matricula == matricula);
  }

  static void editar(CaixaOperador vCaixaOperador) {
    bool localizado = _listaDeCaixaOperadores.contains(vCaixaOperador);

    if(localizado) {
      var caixaOperadores = buscar(vCaixaOperador.matricula);
      for (CaixaOperador antigo in caixaOperadores) {
        antigo.ramal = vCaixaOperador.ramal;
        antigo.salario = vCaixaOperador.salario;
        antigo.telefoneParaContato = vCaixaOperador.telefoneParaContato;
        antigo.email = vCaixaOperador.email;
        antigo.endereco = vCaixaOperador.endereco;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeCaixaOperadores.removeWhere((caixaOperador) => caixaOperador.matricula == matricula);
  }
}