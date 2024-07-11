import 'package:dio/dio.dart';

class Network {
  static final dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));
}