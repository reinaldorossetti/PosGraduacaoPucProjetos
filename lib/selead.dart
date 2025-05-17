// void main() {
//   Carro meuCarro = Carro("Toyota", "Corolla", 2022);
//   Moto minhaMoto = Moto("Honda", "CB 500", 2023);

//   meuCarro.detalhes();
//   minhaMoto.detalhes();
// }

sealed class Veiculo {
  final String marca;
  final String modelo;
  final int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void detalhes();
}
