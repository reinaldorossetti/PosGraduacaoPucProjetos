import '../lib/base.dart';

void main() {
  Carro carro = Carro("Chevrolet", "Onix", 2021);

  carro.detalhes();
}

base class Hach implements Carro {
  @override
  String marca;
  @override
  String modelo;
  @override
  int ano;

  int capacidadePortaMalas;

  Hach(this.marca, this.modelo, this.ano, this.capacidadePortaMalas);

  @override
  void detalhes() {
    print("Carro (implementado): $marca $modelo, Ano: $ano");
    print("Porta-malas: $capacidadePortaMalas litros");
  }
}

base class SuvRaiz extends Carro {
  bool tracaoQuatroRodas;

  SuvRaiz(String marca, String modelo, int ano, this.tracaoQuatroRodas)
      : super(marca, modelo, ano);

  @override
  void detalhes() {
    super.detalhes();
    print("Tração 4x4: ${tracaoQuatroRodas ? "Sim" : "Não"}");
  }
}
