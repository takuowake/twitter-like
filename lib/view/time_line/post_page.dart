import 'package:flutter/material.dart';
import 'package:twitter_like/model/post.dart';
import 'package:twitter_like/utils/authentication.dart';
import 'package:twitter_like/utils/firestore/posts.dart';

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
            onPressed: () async {
              if(contentController.text.isNotEmpty) {
                Post newPost = Post(
                  content: contentController.text,
                  postAccountId: Authentication.myAccount!.id,
                );
                var result = await PostFirestore.addPost(newPost);
                if(result == true) {
                  Navigator.pop(context);
                }
              }
            },
            child: Text('投稿')
          )
        ],
      ),
    );
  }
}
