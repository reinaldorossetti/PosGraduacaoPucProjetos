void main() {
  Hach meuSUV = Hach("Kwid", "Renault", 2023, 280);
  meuSUV.detalhes();
}

base class Veiculo {
  String marca;
  String modelo;
  int ano;
  Veiculo(this.marca, this.modelo, this.ano);

  // Método abstrato ao ser adicionado vai falhar a execução. // void detalhes();
}

base class Carro extends Veiculo {
  Carro(String marca, String modelo, int ano) : super(marca, modelo, ano);

  //@override
  void detalhes() {
    print("Carro: $marca $modelo, Ano: $ano");
  }
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
