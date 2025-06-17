import 'ast_node.dart';
import 'context.dart';
import 'ast.dart';

/// Представление программы Asynchr
class Program extends AstNode {
  final Context context;
  final List<ThreadSet> threadSets;
  final String? resultId;

  Program(this.context, this.threadSets, {this.resultId});

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('Program(\n');
    buffer.write('  context: $context,\n');
    buffer.write('  threadSets: [\n');
    
    for (var threadSet in threadSets) {
      // Indent the thread set representation
      final threadSetStr = threadSet.toString().split('\n')
          .map((line) => '    $line').join('\n');
      buffer.write('$threadSetStr,\n');
    }
    
    buffer.write('  ],\n');
    if (resultId != null) {
      buffer.write('  resultId: $resultId\n');
    }
    buffer.write(')');
    
    return buffer.toString();
  }
}

