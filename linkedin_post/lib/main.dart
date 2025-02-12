import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_post/post.dart';

void main(){
  runApp(LinkedIn_Post());
}

class LinkedIn_Post extends StatefulWidget {
  const LinkedIn_Post({super.key});

  @override
  State<LinkedIn_Post> createState() => _LinkedIn_PostState();
}

class _LinkedIn_PostState extends State<LinkedIn_Post> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Post(),
    );
  }
}
