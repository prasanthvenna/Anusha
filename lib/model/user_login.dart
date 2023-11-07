class Login {
  final String? uuid;
  final String? username;
  final String? password;
  final String? salt;
  final String? md5;
  final String? sha1;
  final String? sha256;
  Login({
    required this.uuid,
    required this.username,
    required this.password,
    required this.salt,
    required this.md5,
    required this.sha1,
    required this.sha256,
  });

  factory Login.fromMap(Map<String, dynamic> e){
    return Login(
        uuid: e['login']['uuid'],
        username: e['login']['username'],
        password: e['login']['password'],
        salt: e['login']['salt'],
        md5: e['login']['md5'],
        sha1: e['login']['sha1'],
        sha256: e['login']['sha256']);
  }
}