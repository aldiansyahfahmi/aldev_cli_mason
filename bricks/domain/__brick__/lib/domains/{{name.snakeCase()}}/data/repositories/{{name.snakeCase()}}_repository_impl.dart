import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../app/shared_libraries/core/model/api_response.dart';
import '../../../../shared_libraries/utils/error/failure_response.dart';
import '../../domain/repositories/{{name.snakeCase()}}_repository.dart';
import '../datasources/remote/{{name.snakeCase()}}_remote_datasource.dart';
import '../mapper/{{name.snakeCase()}}_mapper.dart';
import '../../domain/entities/body/create_{{name.snakeCase()}}_request_entity.dart';
import '../../domain/entities/response/{{name.snakeCase()}}_response_entity.dart';

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
            .mapCreate{{name.pascalCase()}}RequestEntityToDto(
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
          .map{{name.pascalCase()}}DataDtoToEntity(response.data!));
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
          {{name.camelCase()}}Mapper.mapList{{name.pascalCase()}}DataDtoToEntity(response.data!));
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