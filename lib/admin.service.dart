import 'package:http/http.dart';

class AdminService {
  final String url = "https://pmrappteam.herokuapp.com";

  Future<Response> login(String username, String password){
    return post(url+'/login',body: {
      "username": username,
      "password": password
    }, headers: {
      "Content-Type": "application/json"
    });
  }
}