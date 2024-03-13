import 'package:dio/dio.dart';

class Data {
  void allUsers() async {
    Dio dio = Dio();

    try {
      Response response = await dio.get('http://192.168.1.101:3000/users');
      print(response.data);
    } catch (e) {
      print(e.toString());
    }
  }

  void singleUser(int id) async {
    Dio dio = Dio();

    try {
      Response response = await dio.get('http://192.168.1.101:3000/users/${id.toString()}');
      print(response.data);
    } catch (e) {
      print(e.toString());
    }
  }
}
