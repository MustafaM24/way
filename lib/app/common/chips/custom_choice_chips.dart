import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class CustomChoiceChips extends StatefulWidget {
  final Function selectedChip;
  final List<dynamic> chips;
  final bool showBorder;
  final bool fixedWidth;
  const CustomChoiceChips(
      {super.key,
      required this.selectedChip,
      this.fixedWidth = false,
      required this.chips,
      this.showBorder = false});

  @override
  State<CustomChoiceChips> createState() => _ScrollableChips();
}

class _ScrollableChips extends State<CustomChoiceChips> {
  int? chosenChip = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List<Widget>.generate(
              widget.chips.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ChoiceChip(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      side: (widget.showBorder)
                          ? const BorderSide(color: CustomColors.borderGrey)
                          : null,
                      backgroundColor: CustomColors.secondaryblack,
                      selectedColor: CustomColors.primaryMaroon,
                      label: Container(
                          height: 20,
                          width: (widget.fixedWidth)
                              ? MediaQuery.of(context).size.width / 6
                              : null,
                          alignment: Alignment.center,
                          child: Text(widget.chips[index])),
                      selected: chosenChip == index,
                      labelStyle: chosenChip == index
                          ? Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.apply(fontWeightDelta: 2, color: Colors.white)
                          : Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white),
                      onSelected: (selected) {
                        setState(() {
                          chosenChip = selected ? index : -1;
                          widget.selectedChip(widget.chips[index]);
                        });
                      },
                    ),
                  )).toList()),
    );
  }
}
