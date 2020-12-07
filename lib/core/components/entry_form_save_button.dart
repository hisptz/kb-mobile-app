import 'package:flutter/material.dart';

class EntryFormSaveButton extends StatelessWidget {
  const EntryFormSaveButton(
      {Key key,
      this.width = double.infinity,
      @required this.label,
      @required this.labelColor,
      @required this.buttonColor,
      this.marginLeft = 65.0,
      this.marginRight = 64.0,
      this.fontSize = 15.0,
      this.horizontal = 10.0,
      this.vertical = 15.0,
      this.borderColor,
      this.onPressButton})
      : super(key: key);

  final String label;
  final Color labelColor;
  final double fontSize;
  final Color buttonColor;
  final Function onPressButton;
  final double width;
  final double marginLeft;
  final double marginRight;
  final double vertical;
  final double horizontal;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        bottom: 10.0,
        left: marginLeft,
        right: marginRight,
      ),
      child: Container(
        width: width,
        child: FlatButton(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: borderColor == null ? buttonColor : borderColor,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          onPressed: onPressButton,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: vertical,
              horizontal: horizontal,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      label,
                      style: TextStyle().copyWith(
                        color: labelColor,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
