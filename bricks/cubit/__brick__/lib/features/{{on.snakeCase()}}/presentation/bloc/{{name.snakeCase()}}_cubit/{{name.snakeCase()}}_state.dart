import 'package:equatable/equatable.dart';
import '/shared_libraries/utils/state/view_data_state.dart';

class {{name.pascalCase()}}State extends Equatable {
  final ViewData {{name.camelCase()}}State;

  const {{name.pascalCase()}}State({required this.{{name.camelCase()}}State});

  @override
  List<Object?> get props => [{{name.camelCase()}}State];
}
