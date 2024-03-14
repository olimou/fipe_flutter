/// Codigo : 231
/// Mes : "julho/2018 "

class ReferenciaModel {
  num? _codigo;
  String? _mes;

  ReferenciaModel({
    num? codigo,
    String? mes,
  }) {
    _codigo = codigo;
    _mes = mes;
  }

  ReferenciaModel.fromJson(dynamic json) {
    _codigo = json['Codigo'];
    _mes = json['Mes'];
  }

  ReferenciaModel copyWith({
    num? codigo,
    String? mes,
  }) =>
      ReferenciaModel(
        codigo: codigo ?? _codigo,
        mes: mes ?? _mes,
      );

  num? get codigo => _codigo;

  String? get mes => _mes;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Codigo'] = _codigo;
    map['Mes'] = _mes;
    return map;
  }
}
