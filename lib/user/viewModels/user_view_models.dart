part of 'view_models.dart';

Future loginUser(String email, String password) async {
  try {
    var data = {"email": email, "password": password};
    print(data);
    var url = "https://absensi-project.herokuapp.com/api/v1/login";
    var hasil = await http.post(url, body: (data));
    if (hasil.statusCode == 200) {
      print("Sukses login");
      return true;
    } else {
      print("Gagal login");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}
