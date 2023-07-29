import 'package:equatable/equatable.dart';

abstract class {{name.pascalCase()}}Event extends Equatable {
  const {{name.pascalCase()}}Event();
}

class {{name.pascalCase()}} extends {{name.pascalCase()}}Event {
  final {{name.pascalCase()}}RequestEntity {{name.camelCase()}}RequestEntity;

  const {{name.pascalCase()}}({required this.{{name.camelCase()}}RequestEntity});

  @override
  List<Object?> get props => [{{name.camelCase()}}RequestEntity];
}
