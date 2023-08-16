import 'package:flutter_bloc/flutter_bloc.dart';
import '/shared_libraries/utils/state/view_data_state.dart';
import '{{name.snakeCase()}}_state.dart';
import '{{name.snakeCase()}}_event.dart';

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  final {{name.pascalCase()}}UseCase {{name.camelCase()}}UseCase;

  {{name.pascalCase()}}Bloc({required this.{{name.camelCase()}}UseCase}) : super(
          {{name.pascalCase()}}State(
            {{name.camelCase()}}State: ViewData.initial(),
          ),
        ) {
    on<{{name.pascalCase()}}>((event, emit) async {
      emit(
        {{name.pascalCase()}}State(
          {{name.camelCase()}}State: ViewData.loading(),
        ),
      );
      final result = await {{name.camelCase()}}UseCase.call(event.{{name.camelCase()}}RequestEntity);
      result.fold(
        (failure) async => emit(
          {{name.pascalCase()}}State(
            {{name.camelCase()}}State: ViewData.error(
              message: failure.errorMessage,
              failure: failure,
            ),
          ),
        ),
        (result) async {
          emit(
            {{name.pascalCase()}}State(
              {{name.camelCase()}}State: ViewData.loaded(data: result),
            ),
          );
        },
      );
    },);
  }
}
