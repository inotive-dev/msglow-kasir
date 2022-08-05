import 'package:freezed_annotation/freezed_annotation.dart';

import 'order.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required List<Order>? orders,
    required List<String> cashierNames,
    required String? status,
    required String? statusCode,
    required String? message,
  }) = _Transaction;
}
