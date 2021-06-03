// To parse this JSON data, do
//
//     final persona = personaFromJson(jsonString);
import 'dart:convert';

Persona personaFromJson(String str) => Persona.fromJson(json.decode(str));

String personaToJson(Persona data) => json.encode(data.toJson());

class Persona {
    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    Persona({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    factory Persona.fromJson(Map<String, dynamic> json) => new Persona(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar,
    };
}
