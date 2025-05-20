void main() {
  Hach meuHach = Hach("Jeep", "Renegade", 2023, 280);
  meuHach.detalhes();

  Sedan meuSedan = Sedan("Toyota", "Corolla", 2022, 470);
  meuSedan.detalhes();
}

sealed class Veiculo {
  String marca;
  String modelo;
  int ano;
  
  Veiculo(this.marca, this.modelo, this.ano);

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

base class Hach implements Veiculo {
  String marca;
  String modelo;
  int ano;
  int capacidadePortaMalas;

  Hach(this.marca, this.modelo, this.ano, this.capacidadePortaMalas);

  void detalhes() {
    print("Carro (implementado): $marca $modelo, Ano: $ano");
    print("Porta-malas: $capacidadePortaMalas litros");
  }
}