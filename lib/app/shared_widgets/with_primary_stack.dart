import 'package:flutter/material.dart';


class WithPrimaryStack extends StatelessWidget {
  WithPrimaryStack({
    @required this.child,
    @required this.primaryText,
    @required this.onPrimary
  });

  final Widget child;
  final String primaryText;
  final Function onPrimary;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            height: 55.0,
            child: RaisedButton(
              elevation: 0.0,
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: onPrimary,
              child: Text(
                primaryText,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
