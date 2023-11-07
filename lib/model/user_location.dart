class UserLocation {
  final Street street;
  final Coordinates coordinates;
  final TimeZone timezone;
  final String? city;
  final String? state;
  final String? country;
  final String? postcode;
  UserLocation({
    required this.street,
    required this.coordinates,
    required this.timezone,
    required this.city,
    required this.country,
    required this.postcode,
    required this.state,
  });

  factory UserLocation.fromMap(Map <String , dynamic> e){
    final street = Street.fromMap(e['street']);
    final coordinates = Coordinates.fromMap(e['coordinates']);
    final timezone = TimeZone.fromMap(e['timezone']);
    return UserLocation(
        street: street,
        coordinates: coordinates,
        timezone: timezone,
        city: e['location']['city'],
        country: e['location']['country'],
        postcode:e['location']['postcode'].toString(),
        state: e['location']['state']);
  }
}

class Street {
  final String? number;
  final String name;

  Street({required this.name, required this.number});

  factory Street.fromMap(Map<String, dynamic> json){
    return Street(
        name: json['name'],
        number: json['number'].toString());
  }
}

class Coordinates {
  final String latitude;
  final String longitude;

  Coordinates({required this.latitude, required this.longitude});

  factory Coordinates.fromMap(Map<String, dynamic>json){
    return Coordinates(
        latitude: json['latitude'],
        longitude: json['longitude']);
  }
}

class TimeZone {
  final String offset;
  final String description;

  TimeZone({required this.offset, required this.description});

  factory TimeZone.fromMap(Map<String, dynamic>json){
    return TimeZone(
        offset: json['offset'],
        description: json['description']);
  }
}
