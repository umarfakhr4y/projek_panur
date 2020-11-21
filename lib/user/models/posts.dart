part of 'models.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());
  
class UserModel {
  UserModel({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.dataUser,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  DateTime createdAt;
  DateTime updatedAt;
  DataUser dataUser;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        dataUser: DataUser.fromJson(json["data_user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "data_user": dataUser.toJson(),
      };
}

class DataUser {
  DataUser({
    this.id,
    this.userId,
    this.jamMasuk,
    this.jamPulang,
    this.wilayah,
    this.status,
    this.alasanIzin,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int userId;
  String jamMasuk;
  String jamPulang;
  String wilayah;
  String status;
  String alasanIzin;
  DateTime createdAt;
  DateTime updatedAt;

  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
        id: json["id"],
        userId: json["user_id"],
        jamMasuk: json["jam_masuk"],
        jamPulang: json["jam_pulang"],
        wilayah: json["wilayah"],
        status: json["status"],
        alasanIzin: json["alasan_izin"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "jam_masuk": jamMasuk,
        "jam_pulang": jamPulang,
        "wilayah": wilayah,
        "status": status,
        "alasan_izin": alasanIzin,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
