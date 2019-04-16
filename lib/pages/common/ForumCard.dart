import 'package:flutter/material.dart';
import '../DetailsPage.dart';
import '../../models/Forum.dart';
import 'ForumNameButton.dart';
import 'ForumDetail.dart';

class ForumCard extends StatelessWidget {

  final Forum forum;

  ForumCard({this.forum});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(forum)));
      },
      child: SizedBox(
        width: 260.0,
        child: Card(
          elevation: 20,
          margin: EdgeInsets.symmetric(horizontal: 25.0 , vertical: 70.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  forum.imagePath, 
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ForumDetail(forum: forum,)
                ),
                Positioned(
                  left: 0,
                  bottom: 70.0,
                  child: ForumNameButton(name: forum.title,)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}