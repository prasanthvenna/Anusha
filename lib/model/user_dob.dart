class UserDob{
  final DateTime date;
  final String? age;

  UserDob({required this.age, required this.date});
  factory UserDob.fromMap(Map<String, dynamic> json){
    return UserDob(age: json['age'].toString(), date: DateTime.parse(json['date']));
  }
}