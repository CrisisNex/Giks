import 'package:flutter/material.dart';

class TakimSayfa extends StatefulWidget {
  const TakimSayfa({Key? key}) : super(key: key);

  @override
  _TakimSayfaState createState() => _TakimSayfaState();
}

class _TakimSayfaState extends State<TakimSayfa> {
  late final TextEditingController _textEditingController;
  late final ScrollController _scrollController;
  final List<ChatMessage> _messages = [];
  final List<String> _teamMembers = [
    'İsim Soyisim 1',
    'İsim Soyisim 2',
    'İsim Soyisim 3',
    'İsim Soyisim 4',
    'İsim Soyisim 5',
    'İsim Soyisim 6',
    'İsim Soyisim 7',
    'İsim Soyisim 8',
  ];
  bool _showMoreMembers = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10.0),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Takım Görevli Bilgileri',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    height: _showMoreMembers ? 400 : 120,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (int i = 0; i < _teamMembers.length; i++)
                            Container(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 10,
                              ),
                              alignment: Alignment.centerLeft,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: _buildMemberInfo(_teamMembers[i]),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  if (!_showMoreMembers)
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _showMoreMembers = true;
                          });
                        },
                        child: const Text(
                          'Daha Fazla Göster',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  if (_showMoreMembers)
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            _showMoreMembers = false;
                          });
                        },
                        child: const Text(
                          'Daha Az Göster',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  const SizedBox(height: 10.0),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Takım İçi İletişim',
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 3.0),
            Container(
              height: 320,
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _buildChatMessage(_messages[index]);
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: const InputDecoration(
                        hintText: 'Mesaj Yazınız',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      _sendMessage();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberInfo(String memberName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'İsim Soyisim: $memberName',
          style: const TextStyle(fontSize: 16),
        ),
        const Text(
          'Telefon Numarası: +905123456789',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }

  Widget _buildChatMessage(ChatMessage message) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!message.isMe) ...[
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
            const SizedBox(width: 10),
          ],
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: message.isMe ? Colors.blue[100] : Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                message.text,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          if (message.isMe) ...[
            const SizedBox(width: 10),
            const CircleAvatar(
              child: Icon(Icons.person),
            ),
          ],
        ],
      ),
    );
  }

  void _sendMessage() {
    String message = _textEditingController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(
          text: message,
          isMe: true,
        ));
        _textEditingController.clear();
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}

class ChatMessage {
  final String text;
  final bool isMe;

  const ChatMessage({required this.text, required this.isMe});
}

void main() {
  runApp(const MaterialApp(
    home: TakimSayfa(),
  ));
}
