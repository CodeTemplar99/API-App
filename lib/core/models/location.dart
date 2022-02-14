class Place {
  final int? id;
  String country;
  String state;
  double? amount;

  Place({
    required this.id,
    required this.country,
    required this.state,
    required this.amount,
  });

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        id: json['id'],
        country: json['country'],
        state: json['state'],
        amount: double.tryParse(
          json['amount'].toString(),
        ),
      );
  Map<String, dynamic> toJson() => {
        'id': id.toString(),
        'country': country,
        'state': state,
        'amount': amount.toString(),
      };
}
