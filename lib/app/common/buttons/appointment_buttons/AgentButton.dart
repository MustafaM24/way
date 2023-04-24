import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class AgentButton extends StatefulWidget {
  final String label;
  final bool isSelected;
  final Function(bool isSelected) onSelectionChanged;

  const AgentButton({
    required this.label,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  _AgentButtonState createState() => _AgentButtonState();
}

class _AgentButtonState extends State<AgentButton> {
  @override
  Widget build(BuildContext context) {
    return _buildAgentButton(
      label: widget.label,
      isSelected: widget.isSelected,
      onSelectionChanged: () {
        widget.onSelectionChanged(!widget.isSelected);
      },
    );
  }

  Widget _buildAgentButton({
    required String label,
    required bool isSelected,
    required VoidCallback onSelectionChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 7.5, 5),
      child: SizedBox(
        height: 100.0,
        width: 100.0,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isSelected ? Color(0x5F333399) : CustomColors.shadowGrey,
            elevation: 1,
          ),
          onPressed: onSelectionChanged,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/way/add1.png'),
                radius: 20.0,
              ),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  color: isSelected ? Color(0xFF000000) : Color(0xFF000000),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 2),
              Text(
                "Barber",
                style: TextStyle(
                  fontSize: 10,
                  color: isSelected ? Color(0xFF373C43) : Color(0xFF373C43),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0, 0, 7.5, 5),
//       child: SizedBox(
//         width: 100.0,
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             primary: widget.isSelected ? CustomColors.maroonred : Colors.white,
//             onPrimary: Colors.black,
//             side: const BorderSide(
//               color: Colors.black,
//               width: 0.5,
//             ),
//             elevation: 0,
//           ),
//           onPressed: () {
//             widget.onSelectionChanged(!widget.isSelected);
//           },
//           child: Text(widget.label),
//         ),
//       ),
//     );
//   }
// }
