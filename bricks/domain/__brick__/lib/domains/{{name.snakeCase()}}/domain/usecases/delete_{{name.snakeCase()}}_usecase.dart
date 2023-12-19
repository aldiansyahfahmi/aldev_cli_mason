
import 'package:dartz/dartz.dart';

class Delete{{name.pascalCase()}}UseCase extends UseCase<ApiResponse, int> {
  final {{name.pascalCase()}}Repository {{name.camelCase()}}Repository;

  Delete{{name.pascalCase()}}UseCase({required this.{{name.camelCase()}}Repository});
  @override
  Future<Either<FailureResponse, ApiResponse>> call(int params) async =>
      await {{name.camelCase()}}Repository.delete{{name.pascalCase()}}(id: params);
}
