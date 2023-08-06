import 'package:flutter_bloc/flutter_bloc.dart';
import '/shared_libraries/utils/state/view_data_state.dart';
import '/shared_libraries/utils/usecase/usecase.dart';
import '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  final Get{{name.pascalCase()}}UseCase get{{name.pascalCase()}}UseCase;

  {{name.pascalCase()}}Cubit({required get{{name.pascalCase()}}UseCase})
      : super({{name.pascalCase()}}State({{name.camelCase()}}State: ViewData.initial()));

  void get{{name.pascalCase()}}() async {
    emit({{name.pascalCase()}}State({{name.camelCase()}}State: ViewData.loading()));
    final result = await get{{name.pascalCase()}}UseCase.call(const NoParams());
    result.fold(
      (failure) => emit(
        {{name.pascalCase()}}State(
          {{name.camelCase()}}State: ViewData.error(
            message: failure.errorMessage,
            failure: failure,
          ),
        ),
      ),
      (result) => emit(
        {{name.pascalCase()}}State(
          {{name.camelCase()}}State: ViewData.loaded(
            data: result,
          ),
        ),
      ),
    );
  }
}
