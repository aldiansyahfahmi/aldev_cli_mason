class {{name.pascalCase()}}Dependency {
  {{name.pascalCase()}}Dependency() {
    _registerDataSource();
    _registerMapper();
    _registerRepository();
    _registerUseCases();
  }

  void _registerDataSource() {
    sl.registerLazySingleton<{{name.pascalCase()}}RemoteDataSource>(
      () => {{name.pascalCase()}}RemoteDataSourceImpl(
        dio: sl(),
      ),
    );
  }

  void _registerMapper() {
    sl.registerLazySingleton<{{name.pascalCase()}}Mapper>(() => {{name.pascalCase()}}Mapper());
  }

  void _registerRepository() {
    sl.registerLazySingleton<{{name.pascalCase()}}Repository>(
      () => {{name.pascalCase()}}RepositoryImpl(
        {{name.camelCase()}}RemoteDataSource: sl(),
        {{name.camelCase()}}Mapper: sl(),
      ),
    );
  }

  void _registerUseCases() {
    sl.registerLazySingleton<Create{{name.pascalCase()}}UseCase>(
      () => Create{{name.pascalCase()}}UseCase(
        {{name.camelCase()}}Repository: sl(),
      ),
    );
    sl.registerLazySingleton<Get{{name.pascalCase()}}DetailsUseCase>(
      () => Get{{name.pascalCase()}}DetailsUseCase(
        {{name.camelCase()}}Repository: sl(),
      ),
    );
    sl.registerLazySingleton<Get{{name.pascalCase()}}sUseCase>(
      () => Get{{name.pascalCase()}}sUseCase(
        {{name.camelCase()}}Repository: sl(),
      ),
    );
    sl.registerLazySingleton<Delete{{name.pascalCase()}}UseCase>(
      () => Delete{{name.pascalCase()}}UseCase(
        {{name.camelCase()}}Repository: sl(),
      ),
    );
  }
}