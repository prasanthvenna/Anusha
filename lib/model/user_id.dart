class ID {
  final String? name;
  final String? value;

  ID({required this.name, required this.value});

  factory ID.fromMap(Map<String, dynamic> e){
    return ID(name: e['id']['name'], value: e['id']['value']);
  }
}