import 'package:flutter/cupertino.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "New Task Screen",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
      ),
    );
  }
}
