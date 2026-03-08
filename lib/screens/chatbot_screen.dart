import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_service.dart';

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({super.key});

  @override
  ChatbotScreenState createState() => ChatbotScreenState();
}

class ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<_ChatMessage> _messages = [];
  bool _isSending = false;
  final ApiService _apiService = ApiService();

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _isSending) return;

    setState(() {
      _messages.add(_ChatMessage(role: _MessageRole.user, text: text));
      _isSending = true;
    });
    _controller.clear();

    try {
      final reply = await _apiService.getChatResponse(text);

      if (!mounted) return;

      setState(() {
        _messages.add(_ChatMessage(role: _MessageRole.assistant, text: reply));
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _messages.add(
          _ChatMessage(role: _MessageRole.assistant, text: 'Network error: $e'),
        );
      });
    } finally {
      if (!mounted) return;
      setState(() {
        _isSending = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Crop Advisor Chatbot')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: _messages.isEmpty
                  ? const Center(
                      child: Text(
                        "Ask a farming question to get started.",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      itemCount: _messages.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final message = _messages[index];
                        final isUser = message.role == _MessageRole.user;
                        final bubbleColor = isUser
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.surface;
                        final textColor = isUser
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.onSurface;

                        return Align(
                          alignment: isUser
                              ? Alignment.centerRight
                              : Alignment.centerLeft,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: bubbleColor,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              child: Text(
                                message.text,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.image,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () {},
                    ),
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        onSubmitted: (_) => _sendMessage(),
                        decoration: const InputDecoration(
                          hintText: "Type your message...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mic,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      onPressed: _isSending ? null : _sendMessage,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _MessageRole { user, assistant }

class _ChatMessage {
  const _ChatMessage({required this.role, required this.text});

  final _MessageRole role;
  final String text;
}
