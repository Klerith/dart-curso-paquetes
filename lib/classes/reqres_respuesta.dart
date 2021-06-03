// To parse this JSON data, do
//
//     final reqResRespuesta = reqResRespuestaFromMap(jsonString);

import 'dart:convert';

class ReqResRespuesta {
    ReqResRespuesta({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<Datum> data;
    Support support;

    factory ReqResRespuesta.fromJson(String str) => ReqResRespuesta.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ReqResRespuesta.fromMap(Map<String, dynamic> json) => ReqResRespuesta(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: List<Datum>.from(json['data'].map((x) => Datum.fromMap(x))),
        support: Support.fromMap(json['support']),
    );

    Map<String, dynamic> toMap() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': List<dynamic>.from(data.map((x) => x.toMap())),
        'support': support.toMap(),
    };
}

class Datum {
    Datum({
        required this.id,
        required this.email,
        required this.firstName,
        required this.lastName,
        required this.avatar,
    });

    int id;
    String email;
    String firstName;
    String lastName;
    String avatar;

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json['id'],
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar'],
    );

    Map<String, dynamic> toMap() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar,
    };
}

class Support {
    Support({
        required this.url,
        required this.text,
    });

    String url;
    String text;

    factory Support.fromJson(String str) => Support.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Support.fromMap(Map<String, dynamic> json) => Support(
        url: json['url'],
        text: json['text'],
    );

    Map<String, dynamic> toMap() => {
        'url': url,
        'text': text,
    };
}
