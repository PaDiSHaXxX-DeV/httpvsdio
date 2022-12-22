import 'package:flutter/cupertino.dart';
import 'package:httpvsdio/data/api_service/api_service.dart';
import 'package:httpvsdio/data/models/first_models/transaction_model.dart';
import 'package:httpvsdio/data/repository/transaction_repo/transaction_repository.dart';

class TransactionViewModel extends ChangeNotifier {
  TransactionRepositpry transactionRepositpry;
  TransactionViewModel({required this.transactionRepositpry}) {
    fetchTransaction();
  }

  List<TransactionModel>? transactionModel;
  String errorForUI = "";

  fetchTransaction() async {
    MyResponse myResponse = await transactionRepositpry.getMyTransaction();

    if (myResponse.error.isEmpty) {
      transactionModel = myResponse.data as List<TransactionModel>;
    } else {
      errorForUI = myResponse.error;
    }
    notifyListeners();
  }
}
