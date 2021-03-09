part of 'services.dart';

class TransactionServices {
  static Future<ApiReturnValue<List<Transaction>>> getTransactions() async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(value: dummyTransaction);
  }

  static Future<ApiReturnValue<Transaction>> submitTransaction(
      Transaction transaction) async {
    await Future.delayed(Duration(seconds: 2));

    return ApiReturnValue(
        value:
            transaction.copyWith(id: 111, status: TransactionStatus.pending));
  }
}
