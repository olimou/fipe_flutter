import 'package:dio/dio.dart';
import 'package:fipe_flutter/fipe_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FipeApi fipeApi = FipeApi();
  const tipoVeiculo = '1';
  const codigoMarca = '6';
  const codigoModelo = '48';
  const ano = '1995-1';
  const codigoTipoCombustivel = '1';
  const anoModelo = '1995';
  const textModelo = '80 2.6/ 2.8';
  Options options = Options();
  const referenciaTabela = 261;

  setUpAll(() {
    fipeApi = FipeApi();
  });

  test('Requisição: ConsultarMarcas ', () async {
    var expectedMarcas = await fipeApi.consultarMarcas(
      referenciaTabela: referenciaTabela,
      tipoVeiculo: tipoVeiculo,
      options: options,
    );
    expect(expectedMarcas.isNotEmpty, true);
  });

  test('Requisição: ConsultarModelos', () async {
    var expectedVeiculos = await fipeApi.consultarModelos(
      referenciaTabela: referenciaTabela,
      tipoVeiculo: tipoVeiculo,
      codigoMarca: codigoMarca,
      options: options,
    );
    expect(expectedVeiculos.isNotEmpty, true);
  });

  test('Requisição: ConsultarAnoModelo ', () async {
    var expectedVeiculos = await fipeApi.consultarAnoModelo(
      referenciaTabela: referenciaTabela,
      tipoVeiculo: tipoVeiculo,
      codigoMarca: codigoMarca,
      codigoModelo: codigoModelo,
      options: options,
    );
    expect(expectedVeiculos.isNotEmpty, true);
  });

  test('Requisição: ConsultarModelosAtravesDoAno ', () async {
    var expectedVeiculos = await fipeApi.consultarModelosAtravesDoAno(
      referenciaTabela: referenciaTabela,
      tipoVeiculo: tipoVeiculo,
      codigoMarca: codigoMarca,
      codigoModelo: codigoModelo,
      ano: ano,
      codigoTipoCombustivel: codigoTipoCombustivel,
      anoModelo: anoModelo,
      options: options,
    );
    expect(expectedVeiculos.isNotEmpty, true);
  });

  test('Requisição: ConsultarValorComTodosParametros ', () async {
    var expectedVeiculos = await fipeApi.consultarValorComTodosParametros(
      referenciaTabela: referenciaTabela,
      tipoVeiculo: tipoVeiculo,
      codigoMarca: codigoMarca,
      codigoModelo: codigoModelo,
      codigoTipoCombustivel: codigoTipoCombustivel,
      anoModelo: anoModelo,
      options: options,
    );
    expect(expectedVeiculos.modelo, textModelo);
  });
}
