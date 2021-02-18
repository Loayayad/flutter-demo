import 'package:day3/models/post.dart';
import 'package:day3/services/postsService.dart';
import 'package:day3/views/postView.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostsFromServer();
  }

  getPostsFromServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  TextStyle style = TextStyle(color: Colors.red, fontSize: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: //MyCard()
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: postList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostView(post: postList[index]);
                }));
  }
}
