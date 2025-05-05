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

class StringData extends QueryData {
  final String value;
  
  StringData(this.value);
  
  @override
  String toString() => 'String("$value")';
}

class PositionData extends QueryData {
  final Position position;

  PositionData(this.position);

  @override
  String toString() => 'Position($position)';
}

class PositionGroupData extends QueryData {
  final List<Position> positions;
  
  PositionGroupData(this.positions);
  
  @override
  String toString() => 'Positions(${positions.join(', ')})';
}

class ThreadStatusData extends QueryData {
  final String threadId;
  
  ThreadStatusData(this.threadId);
  
  @override
  String toString() => 'ThreadStatus("$threadId")';
}

