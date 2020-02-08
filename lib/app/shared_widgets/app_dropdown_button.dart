import 'package:flutter/material.dart';


class AppDropdownButton extends StatelessWidget {
  AppDropdownButton({
    @required this.items,
    @required this.onChanged,
    this.decoration,
    this.value,
  });

  final InputDecoration decoration;
  final List items;
  final dynamic value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    final InputDecoration effectiveDecoration = decoration.applyDefaults(
      Theme.of(context).inputDecorationTheme,
    );
    return InputDecorator(
      decoration: effectiveDecoration,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: value,
          items: items,
          onChanged: onChanged,
          isDense: true,
          isExpanded: true,
          elevation: 1,
        ),
      ),
    );
  }
}