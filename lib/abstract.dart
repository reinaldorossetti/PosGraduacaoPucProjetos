void main() {
  SuvRaiz meuSUV = SuvRaiz("Jeep", "Renegade", 2023, true);
  meuSUV.detalhes();

  Sedan meuSedan = Sedan("Toyota", "Corolla", 2022, 470);
  meuSedan.detalhes();
}

abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  // Método abstrato que será implementado nas subclasses
  void detalhes();
}

class Sedan extends Veiculo {
  int capacidadePortaMalas;

  Sedan(String marca, String modelo, int ano, this.capacidadePortaMalas)
      : super(marca, modelo, ano);

  @override
  void detalhes() {
    print("Porta-malas: $capacidadePortaMalas litros");
  }
}

class SuvRaiz extends Veiculo {
  bool tracaoQuatroRodas;

  SuvRaiz(String marca, String modelo, int ano, this.tracaoQuatroRodas)
      : super(marca, modelo, ano);

  @override
  void detalhes() {
    print("Tração 4x4: ${tracaoQuatroRodas ? "Sim" : "Não"}");
  }
}
