
class UserName {
  final String? title;
  final String? first;
  final String? last;

  UserName({required this.first, required this.last, required this.title});

  factory UserName.fromMap(Map <String , dynamic> e){
    return UserName(
        first: e['name']['first'],
        last: e['name']['last'],
        title: e['name']['title']);
  }
}