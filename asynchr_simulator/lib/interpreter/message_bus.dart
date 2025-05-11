import 'dart:async';

/// Класс для представления сообщения между акторами
class ActorMessage {
  final String sender;
  final String recipient;
  final String content;
  
  ActorMessage({
    required this.sender,
    required this.recipient,
    required this.content,
  });
  
  @override
  String toString() => '$sender -> $recipient: "$content"';
}

/// Шина сообщений для коммуникации между акторами
class MessageBus {
  // Поток сообщений
  final _messageController = StreamController<ActorMessage>.broadcast();
  
  /// Поток событий отправки сообщений
  Stream<ActorMessage> get onMessageSent => _messageController.stream;
  
  /// Отправка сообщения от одного актора другому
  void sendMessage(String sender, String recipient, String content) {
    final message = ActorMessage(
      sender: sender, 
      recipient: recipient, 
      content: content
    );
    
    // Добавляем сообщение в поток
    _messageController.add(message);
  }
  
  /// Освобождение ресурсов
  void dispose() {
    _messageController.close();
  }
}