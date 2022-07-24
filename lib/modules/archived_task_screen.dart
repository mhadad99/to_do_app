import 'package:flutter/cupertino.dart';

class ArchivedTaskScreen extends StatefulWidget {
  const ArchivedTaskScreen({Key? key}) : super(key: key);

  @override
  State<ArchivedTaskScreen> createState() => _ArchivedTaskScreenState();
}

class _ArchivedTaskScreenState extends State<ArchivedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Archived Task Screen",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 30,
        ),
      ),
    );
  }
}
