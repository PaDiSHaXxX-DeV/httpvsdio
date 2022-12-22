import 'package:flutter/cupertino.dart';
import 'package:httpvsdio/data/api_service/api_service.dart';
import 'package:httpvsdio/data/models/second_models/income_model.dart';
import 'package:httpvsdio/data/repository/income_repo/income_repository.dart';

class IncomeViewModel extends ChangeNotifier {
  IncomeRepositpry incomeRepositpry;
  IncomeViewModel({required this.incomeRepositpry}) {
    fetchIncome();
  }

  List<IncomeModel>? incomeModel;
  String errorForUI = '';

  fetchIncome() async {
    MyResponse myResponse = await incomeRepositpry.getMyIncome();

    if (myResponse.error.isEmpty) {
      incomeModel = myResponse.data as List<IncomeModel>;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
}
