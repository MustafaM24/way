import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class TimeButton extends StatefulWidget {
  final String label;
  final bool isSelected;
  final Function(bool isSelected) onSelectionChanged;

  const TimeButton({
    required this.label,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  _TimeButtonState createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 7.5, 5),
      child: SizedBox(
        width: 100.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: widget.isSelected ? CustomColors.maroonred : Colors.white,
            onPrimary: Colors.black,
            side: const BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
            elevation: 0,
          ),
          onPressed: () {
            widget.onSelectionChanged(!widget.isSelected);
          },
          child: Text(widget.label),
        ),
      ),
    );
  }
}
