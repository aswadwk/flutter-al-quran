// To parse this JSON data, do
//
//     final surah = surahFromJson(jsonString);

import 'dart:convert';

class Surah {
  Surah({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
    this.preBismillah,
    this.verses,
  });

  int? number;
  int? sequence;
  int? numberOfVerses;
  Name? name;
  Revelation? revelation;
  SurahTafsir? tafsir;
  dynamic? preBismillah;
  List<Verse>? verses;

  factory Surah.fromJson(Map<String, dynamic> json) => Surah(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: Revelation.fromJson(json["revelation"]),
        tafsir: SurahTafsir.fromJson(json["tafsir"]),
        preBismillah: json["preBismillah"],
        verses: json["verses"] == null
            ? null
            : List<Verse>.from(json["verses"].map((x) => Verse?.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name?.toJson(),
        "revelation": revelation?.toJson(),
        "tafsir": tafsir?.toJson(),
        "preBismillah": preBismillah,
        "verses": verses == null
            ? null
            : List<dynamic>.from(verses!.map((x) => x.toJson())),
      };
}

class Name {
  Name({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  String? short;
  String? long;
  Translation? transliteration;
  Translation? translation;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: Translation.fromJson(json["transliteration"]),
        translation: Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration?.toJson(),
        "translation": translation?.toJson(),
      };
}

class Translation {
  Translation({
    this.en,
    this.id,
  });

  String? en;
  String? id;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
      };
}

class Revelation {
  Revelation({
    this.arab,
    this.en,
    this.id,
  });

  String? arab;
  String? en;
  String? id;

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: json["arab"],
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "en": en,
        "id": id,
      };
}

class SurahTafsir {
  SurahTafsir({
    required this.id,
  });

  String id;

  factory SurahTafsir.fromJson(Map<String, dynamic> json) => SurahTafsir(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class Verse {
  Verse({
    this.number,
    this.meta,
    this.textt,
    this.translation,
    this.audio,
    this.tafsir,
  });

  Number? number;
  Meta? meta;
  Textt? textt;
  Translation? translation;
  Audio? audio;
  VerseTafsir? tafsir;

  factory Verse.fromJson(Map<String, dynamic>? json) => Verse(
        number: Number.fromJson(json?["number"]),
        meta: Meta.fromJson(json?["meta"]),
        textt: Textt.fromJson(json?["text"]),
        translation: Translation?.fromJson(json?["translation"]),
        audio: Audio.fromJson(json?["audio"]),
        tafsir: VerseTafsir.fromJson(json?["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number?.toJson(),
        "meta": meta?.toJson(),
        "textt": textt?.toJson(),
        "translation": translation?.toJson(),
        "audio": audio?.toJson(),
        "tafsir": tafsir?.toJson(),
      };
}

class Audio {
  Audio({
    this.primary,
    this.secondary,
  });

  String? primary;
  List<String>? secondary;

  factory Audio.fromJson(Map<String, dynamic> json) => Audio(
        primary: json["primary"],
        secondary: List<String>.from(json["secondary"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "primary": primary,
        "secondary": secondary == null
            ? null
            : List<dynamic>.from(secondary!.map((x) => x)),
      };
}

class Meta {
  Meta({
    this.juz,
    this.page,
    this.manzil,
    this.ruku,
    this.hizbQuarter,
    this.sajda,
  });

  int? juz;
  int? page;
  int? manzil;
  int? ruku;
  int? hizbQuarter;
  Sajda? sajda;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        juz: json["juz"],
        page: json["page"],
        manzil: json["manzil"],
        ruku: json["ruku"],
        hizbQuarter: json["hizbQuarter"],
        sajda: Sajda.fromJson(json["sajda"]),
      );

  Map<String, dynamic> toJson() => {
        "juz": juz,
        "page": page,
        "manzil": manzil,
        "ruku": ruku,
        "hizbQuarter": hizbQuarter,
        "sajda": sajda?.toJson(),
      };
}

class Sajda {
  Sajda({
    required this.recommended,
    required this.obligatory,
  });

  bool recommended;
  bool obligatory;

  factory Sajda.fromJson(Map<String, dynamic> json) => Sajda(
        recommended: json["recommended"],
        obligatory: json["obligatory"],
      );

  Map<String, dynamic> toJson() => {
        "recommended": recommended,
        "obligatory": obligatory,
      };
}

class Number {
  Number({
    required this.inQuran,
    required this.inSurah,
  });

  int inQuran;
  int inSurah;

  factory Number.fromJson(Map<String, dynamic> json) => Number(
        inQuran: json["inQuran"],
        inSurah: json["inSurah"],
      );

  Map<String, dynamic> toJson() => {
        "inQuran": inQuran,
        "inSurah": inSurah,
      };
}

class VerseTafsir {
  VerseTafsir({
    required this.id,
  });

  Id id;

  factory VerseTafsir.fromJson(Map<String, dynamic> json) => VerseTafsir(
        id: Id.fromJson(json["id"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id.toJson(),
      };
}

class Id {
  Id({
    required this.short,
    required this.long,
  });

  String short;
  String long;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        short: json["short"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
      };
}

class Textt {
  Textt({
    required this.arab,
    required this.transliteration,
  });

  String arab;
  Transliteration transliteration;

  factory Textt.fromJson(Map<String, dynamic> json) => Textt(
        arab: json["arab"],
        transliteration: Transliteration.fromJson(json["transliteration"]),
      );

  Map<String, dynamic> toJson() => {
        "arab": arab,
        "transliteration": transliteration.toJson(),
      };
}

class Transliteration {
  Transliteration({
    required this.en,
  });

  String en;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      Transliteration(
        en: json["en"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
      };
}
