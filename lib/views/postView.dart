import 'package:day3/models/post.dart';
import 'package:day3/views/postDetails.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostView extends StatefulWidget {
  Post post;

  PostView({this.post});
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostDeatils(post: widget.post)),
          );
        },
        child: Card(
            shadowColor: Colors.grey,
            child: SizedBox(
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(widget.post.title,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.brown,
                            fontWeight: FontWeight.w500,
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      //Image.network(widget.imgLink),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.thumb_up),
                          Text("Like"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.comment),
                          Text("Comment")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
