class ModelCoin {
  String code;
  String codein;
  String name;
  double bid;

  ModelCoin({
    required this.code,
    required this.codein,
    required this.name,
    required this.bid,
  });

  factory ModelCoin.fromJson(Map<String, dynamic> json) {
    return ModelCoin(
      code: json['code'] ?? '',
      codein: json['codein'] ?? '',
      name: json['name'] ?? '',
      bid: double.parse(json['bid'] ?? ''),
    );
  }

  @override
  String toString() {
    return 'ModelCoin(code: $code, codein: $codein, name: $name, bid: $bid)';
  }
}
