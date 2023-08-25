import 'package:flutter/material.dart';

class Choice {
  final String text;
  final String nextStoryId;
  final bool user;

  Choice({required this.text, required this.nextStoryId, required this.user});
}

class Story {
  String id;
  String text;
  List<Choice> choices;
  bool user;

  Story(
      {required this.id,
      required this.text,
      required this.choices,
      required this.user});
}

final initialStory = Story(
  id: '0',
  text: 'Merhaba! Bir macera hikayesine hoş geldiniz. Ne yapmak istersiniz?',
  user: false,
  choices: [
    Choice(text: 'Ormanda yürüyüşe çık', nextStoryId: '1', user: true),
    Choice(text: 'Mağaraya gir', nextStoryId: '2', user: true),
  ],
);

final stories = [
  Story(
    id: '1',
    text: 'Ormanda yürürken eski bir tapınağa rastladınız. Ne yaparsınız?',
    user: false,
    choices: [
      Choice(text: 'Tapınağa gir', nextStoryId: '3', user: true),
      Choice(text: 'Ormanda devam et', nextStoryId: '4', user: true),
    ],
  ),
  Story(
    id: '2',
    text: 'Mağarada karanlık ve gizemli bir yol var. Ne yaparsınız?',
    user: false,
    choices: [
      Choice(text: 'Yolu takip et', nextStoryId: '5', user: true),
      Choice(text: 'Mağaradan çık', nextStoryId: '6', user: true),
    ],
  ),
  Story(
    id: '3',
    text: 'Mağarada karanlık ve gizemli bir yol var. Ne yaparsınız?',
    user: false,
    choices: [
      Choice(text: 'Yolu takip et', nextStoryId: '5', user: true),
      Choice(text: 'Mağaradan çık', nextStoryId: '6', user: true),
    ],
  ),
  // Diğer hikayeler burada devam eder...
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adventure Story App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StoryPage(story: initialStory),
    );
  }
}

class StoryPage extends StatefulWidget {
  Story story;

  StoryPage({required this.story});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  List<String> chatMessages = [];
  bool storyFinished = false;

  @override
  void initState() {
    super.initState();
    _loadStory(widget.story);
  }

  void _loadStory(Story story) {
    setState(() {
      if (story.choices.isNotEmpty) {
        for (var choice in story.choices) {
          chatMessages.add(choice.text);
        }
      } else {
        storyFinished = true;
      }
      chatMessages.add(story.text);
    });
  }

  void _makeChoice(Choice choice) {
    setState(() {
      Story nextStory = stories.firstWhere((s) => s.id == choice.nextStoryId,
          orElse: () => Story(id: '', text: '', choices: [], user: false));
      if (nextStory.id.isNotEmpty) {
        _loadStory(nextStory);
        widget.story = nextStory;
      } else {
        // Eğer geçerli bir hikaye bulunamazsa, hata durumu ile başa çıkabilirsiniz.
        print('Geçerli bir hikaye bulunamadı.');
      }
    });
  }

  Color colors = Color(202123);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adventure Story')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              reverse: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.grey[300] : Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        chatMessages[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          if (!storyFinished)
            Column(
              children: [
                Divider(height: 1),
                Column(
                  children: [
                    for (var choice in widget.story.choices)
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () => _makeChoice(choice),
                          child: Text(choice.text),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          if (storyFinished)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hikaye Bitti',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
