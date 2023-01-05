import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_appnew/verticallist/post_data.dart';

class PostUI extends StatefulWidget {
  final PostData postData;

  PostUI({required this.postData});

  @override
  _PostUIState createState() => _PostUIState();
}

class _PostUIState extends State<PostUI> {
  bool isLiked =false;

  @override
  void initState() {
    isLiked=widget.postData.isLiked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(

        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: Hero(
              tag: widget.postData.discription,
              child: Image.network(
                widget.postData.imageUrl,
                width: double.infinity,
                fit: BoxFit.contain,
                height: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('yyyy-MM-dd – kk:mm').format(widget.postData.date),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      isLiked=!isLiked;
                    });
                  },

                  child: Icon(
                    isLiked?Icons.favorite:Icons.favorite_border,
                    color: Colors.red,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          Text(
            widget.postData.discription,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
