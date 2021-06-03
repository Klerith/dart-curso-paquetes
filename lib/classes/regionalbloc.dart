class RegionalBloc {
    String acronym;
    String name;
    List<String> otherAcronyms;
    List<String> otherNames;

    RegionalBloc({
        required this.acronym,
        required this.name,
        required this.otherAcronyms,
        required this.otherNames,
    });

    factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
        acronym: json['acronym'],
        name: json['name'],
        otherAcronyms: List<String>.from(json['otherAcronyms'].map((x) => x)),
        otherNames: List<String>.from(json['otherNames'].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        'acronym': acronym,
        'name': name,
        'otherAcronyms': List<dynamic>.from(otherAcronyms.map((x) => x)),
        'otherNames': List<dynamic>.from(otherNames.map((x) => x)),
    };
}