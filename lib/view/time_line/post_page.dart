import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController contentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('新規投稿', style: TextStyle(color: Colors.black)),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          TextField(
            controller: contentController,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {

            },
            child: Text('投稿')
          )
        ],
      ),
    );
  }
}
