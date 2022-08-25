// To parse this JSON data, do
//
//     final exercises = exercisesFromMap(jsonString);

import 'dart:convert';

List<Exercises> exercisesFromMap(String str) =>
    List<Exercises>.from(json.decode(str).map((x) => Exercises.fromMap(x)));

String exercisesToMap(List<Exercises> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Exercises {
  Exercises({
    this.id,
    this.categoryId,
    this.name,
    this.img,
    this.ortakAntremanlar,
    this.aciklama,
    this.bolge,
    this.antreman,
    this.benzerHareketler,
  });

  int? id;
  int? categoryId;
  String? name;
  String? img;
  String? ortakAntremanlar;
  String? aciklama;
  String? bolge;
  List<String>? antreman;
  List<String>? benzerHareketler;

  factory Exercises.fromMap(Map<String, dynamic> json) => Exercises(
        id: json["id"] == null ? null : json["id"],
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
        name: json["name"] == null ? null : json["name"],
        img: json["img"] == null ? null : json["img"],
        ortakAntremanlar: json["ortak_antremanlar"] == null
            ? null
            : json["ortak_antremanlar"],
        aciklama: json["aciklama"] == null ? null : json["aciklama"],
        bolge: json["bolge"] == null ? null : json["bolge"],
        antreman: json["antreman"] == null
            ? null
            : List<String>.from(json["antreman"].map((x) => x)),
        benzerHareketler: json["benzer_hareketler"] == null
            ? null
            : List<String>.from(json["benzer_hareketler"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "categoryId": categoryId == null ? null : categoryId,
        "name": name == null ? null : name,
        "img": img == null ? null : img,
        "ortak_antremanlar": ortakAntremanlar == null ? null : ortakAntremanlar,
        "aciklama": aciklama == null ? null : aciklama,
        "bolge": bolge == null ? null : bolge,
        "antreman": antreman == null
            ? null
            : List<dynamic>.from(antreman!.map((x) => x)),
        "benzer_hareketler": benzerHareketler == null
            ? null
            : List<dynamic>.from(benzerHareketler!.map((x) => x)),
      };
}
