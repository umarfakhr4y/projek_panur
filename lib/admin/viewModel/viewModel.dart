import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:project_coba/admin/model/karyawanModel.dart';

Future createPost(String email, String password, String name) async {
  try {
    var data = {"email": email, "password": password, "name": name};
    var url = "https://absensi-project.herokuapp.com/api/v1/register";
    var hasil = await http.post(url, body: (data));
    if (hasil.statusCode == 200) {
      print("Sukses menyimpan data");
      return true;
    } else {
      print("Gagal menyimpan data");
      print(data);
      return false;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future getAllKaryawan() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("http://absensi-project.herokuapp.com/api/v1/user"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data");
      final data = allKaryawanFromJson(hasil.body);
      return data;
    } else {
      print("Gagal menampikan data");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future getSingleDataKaryawan(String id) async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull(
            "https://absensi-project.herokuapp.com/api/v1/user/${id}"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan Single data");
      final data = json.decode(hasil.body);
      print(data);
      return data;
    } else {
      print("Gagal menampikan Single data");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future deleteKaryawan(String id) async {
  try {
    var url = "https://absensi-project.herokuapp.com/api/v1/user/hapus/${id}";
    var hasil = await http.get(url);
    if (hasil.statusCode == 200) {
      print("Sukses Delete data");
      return true;
    } else {
      print(hasil);
      print("Gagal Delete data");
      return false;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}
