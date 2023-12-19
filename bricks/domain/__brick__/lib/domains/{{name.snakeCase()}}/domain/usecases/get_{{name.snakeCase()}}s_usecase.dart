
import 'package:dartz/dartz.dart';

class Get{{name.pascalCase()}}sUseCase
    extends UseCase<List<{{name.pascalCase()}}DataEntity>, NoParams> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Get{{name.pascalCase()}}sUseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, List<{{name.pascalCase()}}DataEntity>>> call(
          NoParams params) async =>
      {{name.camelCase()}}Repository.get{{name.pascalCase()}}s();
}
