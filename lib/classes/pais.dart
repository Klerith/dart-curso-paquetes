// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/currency.dart';
import 'package:paquetes/classes/language.dart';
import 'package:paquetes/classes/regionalbloc.dart';
import 'package:paquetes/classes/translations.dart';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {
    String name;
    List<String> topLevelDomain;
    String alpha2Code;
    String alpha3Code;
    List<String> callingCodes;
    String capital;
    List<String> altSpellings;
    String region;
    String subregion;
    int population;
    List<double> latlng;
    String demonym;
    double area;
    double gini;
    List<String> timezones;
    List<String> borders;
    String nativeName;
    String numericCode;
    List<Currency> currencies;
    List<Language> languages;
    Translations translations;
    String flag;
    List<RegionalBloc> regionalBlocs;
    String cioc;

    Pais({
        required this.name,
        required this.topLevelDomain,
        required this.alpha2Code,
        required this.alpha3Code,
        required this.callingCodes,
        required this.capital,
        required this.altSpellings,
        required this.region,
        required this.subregion,
        required this.population,
        required this.latlng,
        required this.demonym,
        required this.area,
        required this.gini,
        required this.timezones,
        required this.borders,
        required this.nativeName,
        required this.numericCode,
        required this.currencies,
        required this.languages,
        required this.translations,
        required this.flag,
        required this.regionalBlocs,
        required this.cioc,
    });

    factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: json['name'],
        topLevelDomain: List<String>.from(json['topLevelDomain'].map((x) => x)),
        alpha2Code: json['alpha2Code'],
        alpha3Code: json['alpha3Code'],
        callingCodes: List<String>.from(json['callingCodes'].map((x) => x)),
        capital: json['capital'],
        altSpellings: List<String>.from(json['altSpellings'].map((x) => x)),
        region: json['region'],
        subregion: json['subregion'],
        population: json['population'],
        latlng: List<double>.from(json['latlng'].map((x) => x)),
        demonym: json['demonym'],
        area: json['area'],
        gini: json['gini'].toDouble(),
        timezones: List<String>.from(json['timezones'].map((x) => x)),
        borders: List<String>.from(json['borders'].map((x) => x)),
        nativeName: json['nativeName'],
        numericCode: json['numericCode'],
        currencies: List<Currency>.from(json['currencies'].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(json['languages'].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json['translations']),
        flag: json['flag'],
        regionalBlocs: List<RegionalBloc>.from(json['regionalBlocs'].map((x) => RegionalBloc.fromJson(x))),
        cioc: json['cioc'],
    );

    Map<String, dynamic> toJson() => {
        'name': name,
        'topLevelDomain': List<dynamic>.from(topLevelDomain.map((x) => x)),
        'alpha2Code': alpha2Code,
        'alpha3Code': alpha3Code,
        'callingCodes': List<dynamic>.from(callingCodes.map((x) => x)),
        'capital': capital,
        'altSpellings': List<dynamic>.from(altSpellings.map((x) => x)),
        'region': region,
        'subregion': subregion,
        'population': population,
        'latlng': List<dynamic>.from(latlng.map((x) => x)),
        'demonym': demonym,
        'area': area,
        'gini': gini,
        'timezones': List<dynamic>.from(timezones.map((x) => x)),
        'borders': List<dynamic>.from(borders.map((x) => x)),
        'nativeName': nativeName,
        'numericCode': numericCode,
        'currencies': List<dynamic>.from(currencies.map((x) => x.toJson())),
        'languages': List<dynamic>.from(languages.map((x) => x.toJson())),
        'translations': translations.toJson(),
        'flag': flag,
        'regionalBlocs': List<dynamic>.from(regionalBlocs.map((x) => x.toJson())),
        'cioc': cioc,
    };
}




