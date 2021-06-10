// To parse this JSON data, do
//
//     final geetaChapters = geetaChaptersFromJson(jsonString);

import 'dart:convert';

List<GeetaChapters> geetaChaptersFromJson(String str) => List<GeetaChapters>.from(json.decode(str).map((x) => GeetaChapters.fromJson(x)));

String geetaChaptersToJson(List<GeetaChapters> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GeetaChapters {
    GeetaChapters({
        this.chapterNumber,
        this.versesCount,
        this.name,
        this.translation,
        this.transliteration,
        this.meaning,
        this.summary,
    });

    int chapterNumber;
    int versesCount;
    String name;
    String translation;
    String transliteration;
    Meaning meaning;
    Meaning summary;

    factory GeetaChapters.fromJson(Map<String, dynamic> json) => GeetaChapters(
        chapterNumber: json["chapter_number"],
        versesCount: json["verses_count"],
        name: json["name"],
        translation: json["translation"],
        transliteration: json["transliteration"],
        meaning: Meaning.fromJson(json["meaning"]),
        summary: Meaning.fromJson(json["summary"]),
    );

    Map<String, dynamic> toJson() => {
        "chapter_number": chapterNumber,
        "verses_count": versesCount,
        "name": name,
        "translation": translation,
        "transliteration": transliteration,
        "meaning": meaning.toJson(),
        "summary": summary.toJson(),
    };
}

class Meaning {
    Meaning({
        this.en,
        this.hi,
    });

    String en;
    String hi;

    factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        en: json["en"],
        hi: json["hi"],
    );

    Map<String, dynamic> toJson() => {
        "en": en,
        "hi": hi,
    };
}
