import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.provinsi,
    });

    List<Provinsi> provinsi;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        provinsi: List<Provinsi>.from(json["provinsi"].map((x) => Provinsi.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "provinsi": List<dynamic>.from(provinsi.map((x) => x.toJson())),
    };
}

class Provinsi {
    Provinsi({
        this.id,
        this.nama,
    });

    int id;
    String nama;

    factory Provinsi.fromJson(Map<String, dynamic> json) => Provinsi(
        id: json["id"],
        nama: json["nama"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nama": nama,
    };
}
