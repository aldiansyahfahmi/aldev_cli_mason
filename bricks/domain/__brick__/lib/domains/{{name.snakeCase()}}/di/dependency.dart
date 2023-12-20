import '../../../injections/injections.dart';
import '../data/datasources/remote/{{name.snakeCase()}}_remote_datasource.dart';
import '../data/mapper/{{name.snakeCase()}}_mapper.dart';
import '../data/repositories/{{name.snakeCase()}}_repository_impl.dart';
import '../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../domain/usecases/create_{{name.snakeCase()}}_usecase.dart';
import '../domain/usecases/delete_{{name.snakeCase()}}_usecase.dart';
import '../domain/usecases/get_{{name.snakeCase()}}_details_usecase.dart';
import '../domain/usecases/get_{{name.snakeCase()}}s_usecase.dart';

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