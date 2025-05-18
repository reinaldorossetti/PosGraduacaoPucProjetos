import '../lib/final.dart';

final class ConfigCarro extends ConfiguracaoVeiculo{
  ConfigCarro(String tipoCombustivel, int capacidadeTanque, int potenciaMotor) : super(tipoCombustivel, 
  capacidadeTanque, potenciaMotor);

  @override
  void mostrarConfiguracao() {
    super.mostrarConfiguracao();
    print("Esse é um carro");
  }
}

final class ConfigCarroImplementado implements ConfiguracaoVeiculo {
  @override
  final String tipoCombustivel;
  @override
  final int capacidadeTanque;
  @override
  final int potenciaMotor;

  ConfigCarroImplementado(this.tipoCombustivel, this.capacidadeTanque, this.potenciaMotor);

  @override
  void mostrarConfiguracao() {
    print("Configuração do Carro (implementado):");
    print("Combustível: $tipoCombustivel");
    print("Capacidade do Tanque: $capacidadeTanque litros");
    print("Potência do Motor: $potenciaMotor HP");
    print("Esse é um carro implementado");
  }
}

void main() {
  // vai dar erro pois a ConfiguracaoVeiculo não pode ser extendido.
  ConfigCarro("Gasolina", 55, 150);

  // forma correta de usar.
  ConfiguracaoVeiculo configCarro = ConfiguracaoVeiculo("Gasolina", 55, 150);
  configCarro.mostrarConfiguracao();
}
