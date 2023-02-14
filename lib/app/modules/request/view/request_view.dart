import 'package:flutter/cupertino.dart';

class RequestView extends StatefulWidget {
  const RequestView({Key? key}) : super(key: key);

  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Request'),
      ),
    );
  }
}
