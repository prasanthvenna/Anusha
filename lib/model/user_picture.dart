class Picture {
  final String? large;
  final String? medium;
  final String? thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromMap(Map<String, dynamic>e){
    return Picture(
        large: e['picture']['large'],
        medium: e['picture']['medium'],
        thumbnail: e['picture']['thumbnail']);
  }
}