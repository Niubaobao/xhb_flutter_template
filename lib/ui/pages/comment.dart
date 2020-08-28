import 'package:flutter/material.dart';
import 'package:xhb_widget/xhb_widget.dart';

class Comment extends StatefulWidget {
  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: XhbAppBar(
        title: Text('模板', style: _textTheme.headline2),
        centerTitle: false,
      ),
      body: Container(
        child: Text('Comment'),
      ),
    );
  }
}
