import 'package:flutter/material.dart';

class SearchButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final String text;
  const SearchButtonWidget({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(400, 50)),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 10)),
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).accentColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ))),
      onPressed: onTap,
      child: FittedBox(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      )),
    );
  }
}
