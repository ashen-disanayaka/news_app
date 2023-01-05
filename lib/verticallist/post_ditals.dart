
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_appnew/verticallist/post_data.dart';

class PostDitals extends StatelessWidget {
  final PostData postData;

  PostDitals(this.postData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Hero(
            tag: postData.discription,
            child: Image.network(
              postData.imageUrl,
              height: 300,
              width: double.infinity,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat('yyyy-MM-dd – kk:mm').format(postData.date),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  postData.isLiked?Icons.favorite:Icons.favorite_border,
                  color: Colors.red,
                  size: 28,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(postData.discription),
          ),
        ],
      ),
    );
  }
}
