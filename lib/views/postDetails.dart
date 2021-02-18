import 'package:day3/models/post.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PostDeatils extends StatefulWidget {
  Post post;
  PostDeatils({this.post});

  @override
  _PostDeatilsState createState() => _PostDeatilsState();
}

class _PostDeatilsState extends State<PostDeatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Post Details"),
        ),
        body: Container(
            child: Card(
                elevation: 50,
                shadowColor: Colors.grey,
                child: SizedBox(
                  width: 500,
                  //height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.post.title,
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(widget.post.body,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
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
                ))));
  }
}
