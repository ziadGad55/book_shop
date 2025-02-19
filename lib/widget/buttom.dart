import 'package:flutter/material.dart';


class buttom extends StatefulWidget {
  const buttom( {
    super.key, required this.textcolor, required this.textButtom, required this.backgroundcolor1, required this.onPressed,
  });

  final Function() onPressed;
  final Color textcolor;
  final String textButtom;
  final Color backgroundcolor1;

  @override
  State<buttom> createState() => _buttomState();
}

class _buttomState extends State<buttom> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundcolor1,
        fixedSize: Size(365, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        )
      ),
        onPressed: widget.onPressed,
        child: Text(
          (widget.textButtom),
          style: TextStyle(
            color:widget.textcolor ,
          ),
        ));
  }
}
