// To parse this JSON data, do
//
//     final allKaryawan = allKaryawanFromJson(jsonString);

import 'dart:convert';

List<AllKaryawan> allKaryawanFromJson(String str) => List<AllKaryawan>.from(
    json.decode(str).map((x) => AllKaryawan.fromJson(x)));

String allKaryawanToJson(List<AllKaryawan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AllKaryawan {
  AllKaryawan({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.absenMasuk,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  List<AbsenMasuk> absenMasuk;

  factory AllKaryawan.fromJson(Map<String, dynamic> json) => AllKaryawan(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        absenMasuk: List<AbsenMasuk>.from(
            json["absen_masuk"].map((x) => AbsenMasuk.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "absen_masuk": List<dynamic>.from(absenMasuk.map((x) => x.toJson())),
      };
}

class AbsenMasuk {
  AbsenMasuk({
    this.id,
    this.userId,
    this.jamMasuk,
    this.tanggal,
    this.lokasi,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String jamMasuk;
  DateTime tanggal;
  String lokasi;
  DateTime createdAt;
  DateTime updatedAt;

  factory AbsenMasuk.fromJson(Map<String, dynamic> json) => AbsenMasuk(
        id: json["id"],
        userId: json["user_id"],
        jamMasuk: json["jam_masuk"],
        tanggal: DateTime.parse(json["tanggal"]),
        lokasi: json["lokasi"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "jam_masuk": jamMasuk,
        "tanggal":
            "${tanggal.year.toString().padLeft(4, '0')}-${tanggal.month.toString().padLeft(2, '0')}-${tanggal.day.toString().padLeft(2, '0')}",
        "lokasi": lokasi,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
