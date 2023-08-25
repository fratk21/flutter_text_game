import 'package:flutter/material.dart';
import 'package:text_game/story.dart';
// story.dart dosya yolunu güncelleyin
// MessageBubble widget dosya yolunu güncelleyin

class ChatRoomPage extends StatefulWidget {
  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  Story _currentStory = stories[0]; // Initial story
  List<String> messageList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messageList.add(_currentStory.text);
  }

  void _selectChoice(Choice choice) {
    setState(() {
      messageList.add(_currentStory.text);

      messageList.add(choice.text);
      _currentStory =
          stories.firstWhere((story) => story.id == choice.nextStoryId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(202123),
      appBar: AppBar(
        backgroundColor: const Color(202123),
        automaticallyImplyLeading: false,
        title: Text('Aybars'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                return MessageBubble(
                  text: messageList[index],
                  isReceived: index % 2 == 0,
                );
              },
            ),
          ),
          Divider(height: 1.0),
          _buildChoices(),
        ],
      ),
    );
  }

  Widget _buildChoices() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _currentStory.choices.map((choice) {
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 23, 88,
                  142), // Burada arka plan rengini belirleyebilirsiniz
            ),
            onPressed: () => _selectChoice(choice),
            child: Text(choice.text),
          );
        }).toList(),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isReceived;

  MessageBubble({required this.text, required this.isReceived});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isReceived ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 240.0),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: isReceived
                ? const Color.fromARGB(255, 204, 203, 203)
                : const Color.fromARGB(255, 23, 88, 142),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            text,
            style: TextStyle(color: isReceived ? Colors.black : Colors.white),
          ),
        ),
      ],
    );
  }
}
