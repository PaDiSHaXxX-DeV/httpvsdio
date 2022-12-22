
import 'package:httpvsdio/data/api_service/api_service.dart';

class TransactionRepositpry {
  ApiService apiService;

  TransactionRepositpry({required this.apiService});

  Future<MyResponse> getMyTransaction() => apiService.getTransaction();
}