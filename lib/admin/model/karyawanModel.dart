// To parse this JSON data, do
//
//     final allKaryawan = allKaryawanFromJson(jsonString);

import 'dart:convert';

List<AllKaryawan> allKaryawanFromJson(String str) => List<AllKaryawan>.from(json.decode(str).map((x) => AllKaryawan.fromJson(x)));

String allKaryawanToJson(List<AllKaryawan> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllKaryawan {
    AllKaryawan({
        this.id,
        this.name,
        this.email,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.absenMasuk,
        this.absenPulang,
    });

    int id;
    String name;
    String email;
    dynamic emailVerifiedAt;
    DateTime createdAt;
    DateTime updatedAt;
    List<Absen> absenMasuk;
    List<Absen> absenPulang;

    factory AllKaryawan.fromJson(Map<String, dynamic> json) => AllKaryawan(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        absenMasuk: List<Absen>.from(json["absen_masuk"].map((x) => Absen.fromJson(x))),
        absenPulang: List<Absen>.from(json["absen_pulang"].map((x) => Absen.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "absen_masuk": List<dynamic>.from(absenMasuk.map((x) => x.toJson())),
        "absen_pulang": List<dynamic>.from(absenPulang.map((x) => x.toJson())),
    };
}

class Absen {
    Absen({
        this.id,
        this.userId,
        this.jamMasuk,
        this.tanggal,
        this.lokasi,
        this.createdAt,
        this.updatedAt,
        this.jamPulang,
    });

    int id;
    int userId;
    String jamMasuk;
    DateTime tanggal;
    Lokasi lokasi;
    DateTime createdAt;
    DateTime updatedAt;
    String jamPulang;

    factory Absen.fromJson(Map<String, dynamic> json) => Absen(
        id: json["id"],
        userId: json["user_id"],
        jamMasuk: json["jam_masuk"] == null ? null : json["jam_masuk"],
        tanggal: DateTime.parse(json["tanggal"]),
        lokasi: lokasiValues.map[json["lokasi"]],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        jamPulang: json["jam_pulang"] == null ? null : json["jam_pulang"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "jam_masuk": jamMasuk == null ? null : jamMasuk,
        "tanggal": "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "lokasi": lokasiValues.reverse[lokasi],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "jam_pulang": jamPulang == null ? null : jamPulang,
    };
}

enum Lokasi { JONGGOL, LOKASI_JONGGOL }

final lokasiValues = EnumValues({
    "jonggol": Lokasi.JONGGOL,
    "Jonggol": Lokasi.LOKASI_JONGGOL
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
