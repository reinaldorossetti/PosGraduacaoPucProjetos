import '../lib/selead.dart';

void main() {
  Carro carro = Carro("Chevrolet", "Onix", 2021);
  Moto moto = Moto("Suzuki", "GSX", 2020);

  carro.detalhes();
  moto.detalhes();
}

class Carro extends Veiculo {
  Carro(String marca, String modelo, int ano) : super(marca, modelo, ano);

  @override
  void detalhes() {
    print("Carro: $marca $modelo, Ano: $ano");
  }
}

class Moto extends Veiculo {
  Moto(String marca, String modelo, int ano) : super(marca, modelo, ano);

  @override
  void detalhes() {
    print("Moto: $marca $modelo, Ano: $ano");
  }
}