import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

class Usermodel {
  List<Result> results;

  Usermodel({required this.results});

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );
}

class Result {
  String gender;
  Name name;
  Location location;
  String email;
  String phone;
  Picture picture;

  Result({required this.gender, required this.name, required this.location, required this.email, required this.phone, required this.picture});

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    gender: json["gender"],
    name: Name.fromJson(json["name"]),
    location: Location.fromJson(json["location"]),
    email: json["email"],
    phone: json["phone"],
    picture: Picture.fromJson(json["picture"]),
  );
}

class Name {
  String title;
  String first;
  String last;

  Name({required this.title, required this.first, required this.last});

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    title: json["title"],
    first: json["first"],
    last: json["last"],
  );
}

class Location {
  String city;
  String state;
  String country;

  Location({required this.city, required this.state, required this.country});

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    city: json["city"],
    state: json["state"],
    country: json["country"],
  );
}

class Picture {
  String large;

  Picture({required this.large});

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
    large: json["large"],
  );
}
