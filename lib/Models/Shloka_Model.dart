// To parse this JSON data, do
//
//     final geetaShloka = geetaShlokaFromJson(jsonString);

import 'dart:convert';

GeetaShloka geetaShlokaFromJson(String str) => GeetaShloka.fromJson(json.decode(str));

String geetaShlokaToJson(GeetaShloka data) => json.encode(data.toJson());

class GeetaShloka {
    GeetaShloka({
        this.id,
        this.chapter,
        this.verse,
        this.slok,
        this.transliteration,
        this.tej,
        this.siva,
        this.purohit,
        this.chinmay,
        this.san,
        this.adi,
        this.gambir,
        this.madhav,
        this.anand,
        this.rams,
        this.raman,
        this.abhinav,
        this.sankar,
        this.jaya,
        this.vallabh,
        this.ms,
        this.srid,
        this.dhan,
        this.venkat,
        this.puru,
        this.neel,
    });

    String id;
    int chapter;
    int verse;
    String slok;
    String transliteration;
    Tej tej;
    Siva siva;
    Adi purohit;
    Chinmay chinmay;
    Adi san;
    Adi adi;
    Adi gambir;
    Anand madhav;
    Anand anand;
    Rams rams;
    Abhinav raman;
    Abhinav abhinav;
    Sankar sankar;
    Anand jaya;
    Anand vallabh;
    Anand ms;
    Anand srid;
    Anand dhan;
    Anand venkat;
    Anand puru;
    Anand neel;

    factory GeetaShloka.fromJson(Map<String, dynamic> json) => GeetaShloka(
        id: json["_id"],
        chapter: json["chapter"],
        verse: json["verse"],
        slok: json["slok"],
        transliteration: json["transliteration"],
        tej: Tej.fromJson(json["tej"]),
        siva: Siva.fromJson(json["siva"]),
        purohit: Adi.fromJson(json["purohit"]),
        chinmay: Chinmay.fromJson(json["chinmay"]),
        san: Adi.fromJson(json["san"]),
        adi: Adi.fromJson(json["adi"]),
        gambir: Adi.fromJson(json["gambir"]),
        madhav: Anand.fromJson(json["madhav"]),
        anand: Anand.fromJson(json["anand"]),
        rams: Rams.fromJson(json["rams"]),
        raman: Abhinav.fromJson(json["raman"]),
        abhinav: Abhinav.fromJson(json["abhinav"]),
        sankar: Sankar.fromJson(json["sankar"]),
        jaya: Anand.fromJson(json["jaya"]),
        vallabh: Anand.fromJson(json["vallabh"]),
        ms: Anand.fromJson(json["ms"]),
        srid: Anand.fromJson(json["srid"]),
        dhan: Anand.fromJson(json["dhan"]),
        venkat: Anand.fromJson(json["venkat"]),
        puru: Anand.fromJson(json["puru"]),
        neel: Anand.fromJson(json["neel"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "chapter": chapter,
        "verse": verse,
        "slok": slok,
        "transliteration": transliteration,
        "tej": tej.toJson(),
        "siva": siva.toJson(),
        "purohit": purohit.toJson(),
        "chinmay": chinmay.toJson(),
        "san": san.toJson(),
        "adi": adi.toJson(),
        "gambir": gambir.toJson(),
        "madhav": madhav.toJson(),
        "anand": anand.toJson(),
        "rams": rams.toJson(),
        "raman": raman.toJson(),
        "abhinav": abhinav.toJson(),
        "sankar": sankar.toJson(),
        "jaya": jaya.toJson(),
        "vallabh": vallabh.toJson(),
        "ms": ms.toJson(),
        "srid": srid.toJson(),
        "dhan": dhan.toJson(),
        "venkat": venkat.toJson(),
        "puru": puru.toJson(),
        "neel": neel.toJson(),
    };
}

class Abhinav {
    Abhinav({
        this.author,
        this.sc,
        this.et,
    });

    String author;
    String sc;
    String et;

    factory Abhinav.fromJson(Map<String, dynamic> json) => Abhinav(
        author: json["author"],
        sc: json["sc"],
        et: json["et"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
        "et": et,
    };
}

class Adi {
    Adi({
        this.author,
        this.et,
    });

    String author;
    String et;

    factory Adi.fromJson(Map<String, dynamic> json) => Adi(
        author: json["author"],
        et: json["et"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
    };
}

class Anand {
    Anand({
        this.author,
        this.sc,
    });

    String author;
    String sc;

    factory Anand.fromJson(Map<String, dynamic> json) => Anand(
        author: json["author"],
        sc: json["sc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
    };
}

class Chinmay {
    Chinmay({
        this.author,
        this.hc,
    });

    String author;
    String hc;

    factory Chinmay.fromJson(Map<String, dynamic> json) => Chinmay(
        author: json["author"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "hc": hc,
    };
}

class Rams {
    Rams({
        this.author,
        this.ht,
        this.hc,
    });

    String author;
    String ht;
    String hc;

    factory Rams.fromJson(Map<String, dynamic> json) => Rams(
        author: json["author"],
        ht: json["ht"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "hc": hc,
    };
}

class Sankar {
    Sankar({
        this.author,
        this.ht,
        this.sc,
        this.et,
    });

    String author;
    String ht;
    String sc;
    String et;

    factory Sankar.fromJson(Map<String, dynamic> json) => Sankar(
        author: json["author"],
        ht: json["ht"],
        sc: json["sc"],
        et: json["et"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "sc": sc,
        "et": et,
    };
}

class Siva {
    Siva({
        this.author,
        this.et,
        this.ec,
    });

    String author;
    String et;
    String ec;

    factory Siva.fromJson(Map<String, dynamic> json) => Siva(
        author: json["author"],
        et: json["et"],
        ec: json["ec"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
        "ec": ec,
    };
}

class Tej {
    Tej({
        this.author,
        this.ht,
    });

    String author;
    String ht;

    factory Tej.fromJson(Map<String, dynamic> json) => Tej(
        author: json["author"],
        ht: json["ht"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
    };
}
