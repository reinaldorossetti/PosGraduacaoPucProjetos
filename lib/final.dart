final class ConfiguracaoVeiculo {
  final String tipoCombustivel;
  final int capacidadeTanque;
  final int potenciaMotor;

  // Construtor
  ConfiguracaoVeiculo(this.tipoCombustivel, this.capacidadeTanque, this.potenciaMotor);

  // Método para exibir configuração
  void mostrarConfiguracao() {
    print("Configuração do Veículo:");
    print("Combustível: $tipoCombustivel");
    print("Capacidade do Tanque: $capacidadeTanque litros");
    print("Potência do Motor: $potenciaMotor HP");
  }
}

class ConfigCarroErro extends ConfiguracaoVeiculo{
  ConfiguracaoVeiculo configCarro = ConfiguracaoVeiculo("Gasolina", 55, 150);
  configCarro.mostrarConfiguracao();
}


void main() {
  // vai dar erro pois a ConfiguracaoVeiculo não pode ser extendido.
  ConfigCarro("Gasolina", 55, 150);

  // forma correta de usar.
  ConfiguracaoVeiculo configCarro = ConfiguracaoVeiculo("Gasolina", 55, 150);
  configCarro.mostrarConfiguracao();
}
