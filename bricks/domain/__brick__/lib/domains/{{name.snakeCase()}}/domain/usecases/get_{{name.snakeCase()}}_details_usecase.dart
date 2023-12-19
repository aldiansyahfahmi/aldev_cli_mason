
import 'package:dartz/dartz.dart';

class Get{{name.pascalCase()}}DetailsUseCase extends UseCase<{{name.pascalCase()}}DataEntity, int> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Get{{name.pascalCase()}}DetailsUseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, {{name.pascalCase()}}DataEntity>> call(
          int params) async =>
      {{name.camelCase()}}Repository.get{{name.pascalCase()}}Details(id: params);
}
