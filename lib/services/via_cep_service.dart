import 'package:search_cep/models/result_cep.dart';
import 'package:http/http.dart' as http;

class ViaCepService {
  static Future<ResultCep> fetchCep({String cep}) async {
    final response = await http.get('https://viacep.com.br/ws/$cep/json/');
    if(response.statusCode == 200){
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception("Requisição Invlida! ");
    }
  }
}