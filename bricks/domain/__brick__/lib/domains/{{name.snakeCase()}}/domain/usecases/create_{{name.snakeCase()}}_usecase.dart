import 'package:dartz/dartz.dart';

import '../../../../app/shared_libraries/core/model/api_response.dart';
import '../../../../shared_libraries/utils/error/failure_response.dart';
import '../../../../shared_libraries/utils/usecase/usecase.dart';
import '../entities/body/create_{{name.snakeCase()}}_request_entity.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';

class Create{{name.pascalCase()}}UseCase
    extends UseCase<ApiResponse, Create{{name.pascalCase()}}RequestEntity> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Create{{name.pascalCase()}}UseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, ApiResponse>> call(
          Create{{name.pascalCase()}}RequestEntity params) async =>
      {{name.camelCase()}}Repository.create{{name.pascalCase()}}(
          create{{name.pascalCase()}}RequestEntity: params);
}
