import 'package:dartz/dartz.dart';

import '../../../../app/shared_libraries/core/model/api_response.dart';
import '../../../../shared_libraries/utils/error/failure_response.dart';
import '../../../../shared_libraries/utils/usecase/usecase.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
import '../entities/response/{{name.snakeCase()}}_response_entity.dart';

class Get{{name.pascalCase()}}sUseCase
    extends UseCase<List<{{name.pascalCase()}}DataEntity>, NoParams> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Get{{name.pascalCase()}}sUseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, List<{{name.pascalCase()}}DataEntity>>> call(
          NoParams params) async =>
      {{name.camelCase()}}Repository.get{{name.pascalCase()}}s();
}
