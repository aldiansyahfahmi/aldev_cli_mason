
import 'package:dartz/dartz.dart';

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
