class Quote {
  int id;
  String quotes;

  Quote(
      {required this.quotes,
        required this.id,});

  factory Quote.fromMap({required Map data}) {
    return Quote(
        quotes: data['quotes'],
        id: data['id'],);
  }
}