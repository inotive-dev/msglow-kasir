import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/base/usecase/future_usecase.dart';
import '../../core/unions/failure.dart';
import '../../data/remote/response/transaction/closing_response.dart';
import '../repositories/my_repository.dart';

class ClosingUseCaseParams {
  final DateTime? filterDate;
  final int? actualEndingCash;

  ClosingUseCaseParams({required this.filterDate, this.actualEndingCash});
}

@lazySingleton
class ClosingUseCase
    extends FutureUseCase<ClosingResponse, ClosingUseCaseParams> {
  final MyRepository myRepository;

  ClosingUseCase({required this.myRepository});

  @override
  Future<Either<Failure, ClosingResponse>> execute(
      ClosingUseCaseParams params) {
    return myRepository.closing(params);
  }
}
