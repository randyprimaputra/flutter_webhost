import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView(
        children: [
          Image.asset('images/flutter.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is a text widget',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('Outlined Button');
                },
                child: const Text('Outlined Button'),
              ),
              TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('Text Button'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
