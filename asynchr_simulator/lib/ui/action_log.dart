import 'package:flutter/material.dart';
import 'dart:async';

enum LogType {
  info,
  action,
  success,
  error,
}

class LogEntry {
  final String message;
  final LogType type;
  final DateTime timestamp;

  LogEntry(this.message, this.type) : timestamp = DateTime.now();
}

class ActionLogController {
  final _entriesController = StreamController<LogEntry>.broadcast();
  Stream<LogEntry> get onEntry => _entriesController.stream;
  
  final List<LogEntry> _entries = [];
  List<LogEntry> get entries => List.unmodifiable(_entries);

  void addEntry(String message, LogType type) {
    final entry = LogEntry(message, type);
    _entries.add(entry);
    _entriesController.add(entry);
  }

  void clear() {
    _entries.clear();
    // Сообщаем об очистке журнала
    _entriesController.add(LogEntry('', LogType.info));
  }

  void dispose() {
    _entriesController.close();
  }
}

class ActionLog extends StatefulWidget {
  final ActionLogController controller;

  const ActionLog({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _ActionLogState createState() => _ActionLogState();
}

class _ActionLogState extends State<ActionLog> {
  final ScrollController _scrollController = ScrollController();
  late StreamSubscription _subscription;
  List<LogEntry> _entries = [];

  @override
  void initState() {
    super.initState();
    _entries = widget.controller.entries;
    
    // Подписываемся на новые записи
    _subscription = widget.controller.onEntry.listen((entry) {
      setState(() {
        if (entry.message.isEmpty) {
          // Очистка журнала
          _entries = [];
        } else {
          _entries = widget.controller.entries;
        }
      });
      
      // Прокручиваем к последней записи
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_scrollController.hasClients) {
          _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      });
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Журнал действий',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(
                  icon: const Icon(Icons.clear_all),
                  tooltip: 'Очистить журнал',
                  onPressed: () => widget.controller.clear(),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: _entries.isEmpty
                ? const Center(child: Text('Журнал пуст'))
                : ListView.builder(
                    controller: _scrollController,
                    itemCount: _entries.length,
                    itemBuilder: (context, index) {
                      final entry = _entries[index];
                      return LogEntryTile(entry: entry);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class LogEntryTile extends StatelessWidget {
  final LogEntry entry;

  const LogEntryTile({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Проверяем, является ли сообщение действием DSL
    final bool isDslAction = _isDslAction(entry.message);
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 70,
            child: Text(
              '${entry.timestamp.hour}:${entry.timestamp.minute.toString().padLeft(2, '0')}:${entry.timestamp.second.toString().padLeft(2, '0')}',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 12,
              ),
            ),
          ),
          _getIconForType(entry.type),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              entry.message,
              style: TextStyle(
                color: _getColorForType(entry.type),
                // Делаем DSL команды жирными для лучшей видимости
                fontWeight: isDslAction ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // Проверяет, является ли сообщение DSL командой
  bool _isDslAction(String message) {
    final dslKeywords = [
      'Шаг_Вперед', 'Повернуть_Влево', 'Повернуть_Вправо', 
      'Поднять_Коробку', 'Опустить_Коробку', 'ОТПРАВИТЬ', 
      'ПОЛУЧИТЬ', 'ПАУЗА', 'ПОКА', 'ЕСЛИ', 'ПОВТОРИТЬ'
    ];
    
    for (var keyword in dslKeywords) {
      if (message.contains(keyword)) return true;
    }
    return false;
  }

  Widget _getIconForType(LogType type) {
    switch (type) {
      case LogType.info:
        return const Icon(Icons.info_outline, size: 16, color: Colors.blue);
      case LogType.action:
        return const Icon(Icons.play_arrow, size: 16, color: Colors.purple);
      case LogType.success:
        return const Icon(Icons.check_circle_outline, size: 16, color: Colors.green);
      case LogType.error:
        return const Icon(Icons.error_outline, size: 16, color: Colors.red);
    }
  }

  Color _getColorForType(LogType type) {
    switch (type) {
      case LogType.info:
        return Colors.black87;
      case LogType.action:
        return Colors.purple.shade700;
      case LogType.success:
        return Colors.green.shade700;
      case LogType.error:
        return Colors.red.shade700;
    }
  }
}