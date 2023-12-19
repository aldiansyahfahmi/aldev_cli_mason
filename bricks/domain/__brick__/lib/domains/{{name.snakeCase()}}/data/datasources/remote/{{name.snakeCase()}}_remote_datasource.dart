abstract class {{name.pascalCase()}}RemoteDataSource {
    Future<ApiResponse> create{{name.pascalCase()}}(
      {required Create{{name.pascalCase()}}RequestDto create{{name.pascalCase()}}RequestDto});
  Future<ApiResponse<List<{{name.pascalCase()}}DataDto>>> get{{name.pascalCase()}}s();
  Future<ApiResponse<{{name.pascalCase()}}DataDto>> get{{name.pascalCase()}}Details(
      {required int id});
  Future<ApiResponse> delete{{name.pascalCase()}}({required int id});
}

class {{name.pascalCase()}}RemoteDataSourceImpl implements {{name.pascalCase()}}RemoteDataSource {
  final Dio dio;

  {{name.pascalCase()}}RemoteDataSourceImpl({required this.dio});

  @override
  Future<ApiResponse> create{{name.pascalCase()}}(
      {required Create{{name.pascalCase()}}RequestDto create{{name.pascalCase()}}RequestDto}) async {
    try {
      final response = await dio.post(
        AppConstants.appApi.{{name.camelCase()}},
        data: FormData.fromMap(await create{{name.pascalCase()}}RequestDto.toJson()),
      );
      return ApiResponse.fromJson(
        response.data,
        onDataDeserialized: (_) => null,
      );
    } catch (e) {
      rethrow;
    }
  }

    @override
  Future<ApiResponse<{{name.pascalCase()}}DataDto>> get{{name.pascalCase()}}Details(
      {required int id}) async {
    try {
      final response = await dio.get('${AppConstants.appApi.{{name.camelCase()}}}/$id');
      return ApiResponse.fromJson(
        response.data,
        onDataDeserialized: (json) => {{name.pascalCase()}}DataDto.fromJson(json),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ApiResponse<List<{{name.pascalCase()}}DataDto>>> get{{name.pascalCase()}}s() async {
    try {
      final response = await dio.get(AppConstants.appApi.{{name.camelCase()}});
      return ApiResponse.fromJson(
        response.data,
        onDataDeserialized: (json) => List<{{name.pascalCase()}}DataDto>.from(
          json.map(
            (x) => {{name.pascalCase()}}DataDto.fromJson(x),
          ),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

    @override
  Future<ApiResponse> delete{{name.pascalCase()}}({required int id}) async {
    try {
      final response = await dio.delete('${AppConstants.appApi.{{name.camelCase()}}}/$id');
      return ApiResponse.fromJson(
        response.data,
        onDataDeserialized: (_) => null,
      );
    } catch (e) {
      rethrow;
    }
  }

}