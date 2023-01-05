import 'package:flutter/material.dart';
import 'package:news_appnew/verticallist/post_data.dart';
import 'package:news_appnew/verticallist/post_ditals.dart';
import 'package:news_appnew/verticallist/post_ui.dart';

class PostList extends StatefulWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  List<PostData> postdata = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    postdata.addAll([
      PostData(
          imageUrl:
          'https://cdn.dribbble.com/users/8781676/screenshots/16221848/media/3b2734b54315b873b0127920dd9e84a9.png?compress=1&resize=768x576&vertical=top',
          date: DateTime.now(),
          discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Duis condimentum metus eleifend leo ultricies, quis venenatis enim dictum.\n Nulla facilisis purus non magna luctus, eget posuere nulla ultrices.',
          isLiked: false),
      PostData(
          imageUrl:
          'https://cdn.dribbble.com/users/5780160/screenshots/18354083/media/bc465b83283fea28a47ca55c638f0f20.jpg?compress=1&resize=768x576&vertical=top',
          date: DateTime.now().subtract(Duration(days: 30)),
          discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Duis condimentum metus eleifend leo ultricies, quis venenatis enim dictum.\n Nulla facilisis purus non magna luctus, eget posuere nulla ultrices.',
          isLiked: true),
      PostData(
          imageUrl:
          'https://cdn.dribbble.com/users/5780160/screenshots/18354083/media/bc465b83283fea28a47ca55c638f0f20.jpg?compress=1&resize=768x576&vertical=top',
          date: DateTime.now().subtract(Duration(days: 30)),
          discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Duis condimentum metus eleifend leo ultricies, quis venenatis enim dictum.\n Nulla facilisis purus non magna luctus, eget posuere nulla ultrices.',
          isLiked: true),
      PostData(
          imageUrl:
          'https://cdn.dribbble.com/users/8781676/screenshots/16221848/media/3b2734b54315b873b0127920dd9e84a9.png?compress=1&resize=768x576&vertical=top',
          date: DateTime.now(),
          discription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n Duis condimentum metus eleifend leo ultricies, quis venenatis enim dictum.\n Nulla facilisis purus non magna luctus, eget posuere nulla ultrices.',
          isLiked: false),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(

        itemCount: postdata.length,
        itemBuilder: (context, index) {
          return InkResponse(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   PostDitals(postdata[index])),
                );
              },
              child: PostUI(postData: postdata[index]));
        },
      ),
    );
  }
}
