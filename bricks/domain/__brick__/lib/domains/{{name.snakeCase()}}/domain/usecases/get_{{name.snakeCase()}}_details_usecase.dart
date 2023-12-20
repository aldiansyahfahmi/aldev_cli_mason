import 'package:dartz/dartz.dart';

import '../../../../app/shared_libraries/core/model/api_response.dart';
import '../../../../shared_libraries/utils/error/failure_response.dart';
import '../../../../shared_libraries/utils/usecase/usecase.dart';
import '../repositories/{{name.snakeCase()}}_repository.dart';
import '../entities/response/{{name.snakeCase()}}_response_entity.dart';

class Get{{name.pascalCase()}}DetailsUseCase extends UseCase<{{name.pascalCase()}}DataEntity, int> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Get{{name.pascalCase()}}DetailsUseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, {{name.pascalCase()}}DataEntity>> call(
          int params) async =>
      {{name.camelCase()}}Repository.get{{name.pascalCase()}}Details(id: params);
}
