import 'package:flutter/cupertino.dart';

class RemediText extends StatelessWidget {
  final Text text;

  const RemediText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(textScaleFactor: 1),
      child: text,
    );
  }
}
