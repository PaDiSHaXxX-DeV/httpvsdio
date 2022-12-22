
import 'package:httpvsdio/data/api_service/api_service.dart';

class IncomeRepositpry {
  ApiService apiService;

  IncomeRepositpry({required this.apiService});

  Future<MyResponse> getMyIncome() => apiService.getIncome();
}