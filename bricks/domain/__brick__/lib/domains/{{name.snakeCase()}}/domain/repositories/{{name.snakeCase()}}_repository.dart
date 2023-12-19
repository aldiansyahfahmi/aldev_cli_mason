abstract class {{name.pascalCase()}}Repository {
    Future<Either<FailureResponse, ApiResponse>> create{{name.pascalCase()}}(
      {required Create{{name.pascalCase()}}RequestEntity create{{name.pascalCase()}}RequestEntity});
  Future<Either<FailureResponse, List<{{name.pascalCase()}}DataEntity>>> get{{name.pascalCase()}}s();
  Future<Either<FailureResponse, {{name.pascalCase()}}DataEntity>> get{{name.pascalCase()}}Details(
      {required int id});
  Future<Either<FailureResponse, ApiResponse>> delete{{name.pascalCase()}}(
      {required int id});
}