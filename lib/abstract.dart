void main() {
  SuvRaiz meuSUV = SuvRaiz("Jeep", "Renegade", 2023, true);
  meuSUV.detalhes();
}

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;
  Veiculo(this.marca, this.modelo, this.ano);

  // Método abstrato que será implementado nas subclasses
  void detalhes();
}

class Carro extends Veiculo {
  Carro(String marca, String modelo, int ano) : super(marca, modelo, ano);

  @override
  void detalhes() {
    print("Carro: $marca $modelo, Ano: $ano");
  }
}

class Sedan extends Carro {
  int capacidadePortaMalas;

  Sedan(String marca, String modelo, int ano, this.capacidadePortaMalas)
      : super(marca, modelo, ano);

  @override
  void detalhes() {
    super.detalhes();
    print("Porta-malas: $capacidadePortaMalas litros");
  }
}

class SuvRaiz extends Carro {
  bool tracaoQuatroRodas;

  SuvRaiz(String marca, String modelo, int ano, this.tracaoQuatroRodas)
      : super(marca, modelo, ano);

  @override
  void detalhes() {
    super.detalhes();
    print("Tração 4x4: ${tracaoQuatroRodas ? "Sim" : "Não"}");
  }
}
