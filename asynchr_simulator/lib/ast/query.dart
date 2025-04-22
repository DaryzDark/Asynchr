import 'ast_node.dart';
import 'context.dart';

class QueryBlock extends AstNode {
  final List<QueryStatement> queries;

  QueryBlock(this.queries);

  @override
  String toString() => 'QueryBlock(${queries.join(', ')})';
}

class QueryStatement extends AstNode {
  final QueryData data;

  QueryStatement(this.data);

  @override
  String toString() => 'QueryStatement($data)';
}

abstract class QueryData extends AstNode {}

class NumberData extends QueryData {
  final num value;

  NumberData(this.value);

  @override
  String toString() => 'Number($value)';
}

class PositionData extends QueryData {
  final Position position;

  PositionData(this.position);

  @override
  String toString() => 'PositionData($position)';
}

