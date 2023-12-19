class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  final {{name.pascalCase()}}RemoteDataSource {{name.camelCase()}}RemoteDataSource;
  final {{name.pascalCase()}}Mapper {{name.camelCase()}}Mapper;

  {{name.pascalCase()}}RepositoryImpl({
    required this.{{name.camelCase()}}RemoteDataSource,
    required this.{{name.camelCase()}}Mapper,
  });

  @override
  Future<Either<FailureResponse, ApiResponse>> create{{name.pascalCase()}}(
      {required Create{{name.pascalCase()}}RequestEntity
          create{{name.pascalCase()}}RequestEntity}) async {
    try {
      final response = await {{name.camelCase()}}RemoteDataSource.create{{name.pascalCase()}}(
        create{{name.pascalCase()}}RequestDto: {{name.camelCase()}}Mapper
            .mapCreate{{name.pascalCase()}}RequestEntityToCreate{{name.pascalCase()}}RequestDto(
                create{{name.pascalCase()}}RequestEntity),
      );
      return Right(response);
    } on DioException catch (error) {
      return Left(FailureResponse.dio(error));
    }
  }

    @override
  Future<Either<FailureResponse, {{name.pascalCase()}}DataEntity>> get{{name.pascalCase()}}Details(
      {required int id}) async {
    try {
      final response =
          await {{name.camelCase()}}RemoteDataSource.get{{name.pascalCase()}}Details(id: id);
      return Right({{name.camelCase()}}Mapper
          .map{{name.pascalCase()}}DataDtoTo{{name.pascalCase()}}DataEntity(response.data!));
    } on DioException catch (error) {
      return Left(FailureResponse.dio(error));
    }
  }

    @override
  Future<Either<FailureResponse, List<{{name.pascalCase()}}DataEntity>>>
      get{{name.pascalCase()}}s() async {
    try {
      final response = await {{name.camelCase()}}RemoteDataSource.get{{name.pascalCase()}}s();
      return Right(
          {{name.camelCase()}}Mapper.map{{name.pascalCase()}}DataDtoToEntity(response.data!));
    } on DioException catch (error) {
      return Left(FailureResponse.dio(error));
    }
  }

  @override
  Future<Either<FailureResponse, ApiResponse>> delete{{name.pascalCase()}}(
      {required int id}) async {
    try {
      final response =
          await {{name.camelCase()}}RemoteDataSource.delete{{name.pascalCase()}}(id: id);
      return Right(response);
    } on DioException catch (error) {
      return Left(FailureResponse.dio(error));
    }
  }
}