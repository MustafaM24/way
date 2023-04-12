import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WalletCard extends StatelessWidget {
  final String name;
  final int age;
  final String imageUrl;
  final bool isPositive;
  final String action;

  const WalletCard({
    Key? key,
    required this.name,
    required this.age,
    required this.imageUrl,
    required this.isPositive,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(39, 165, 165, 165),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "John Smith",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "23/03/2023",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF000000),
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "12:30",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF373C43),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        isPositive
                            ? Icon(
                                MdiIcons.arrowUpBold,
                                color: Colors.green,
                              )
                            : Icon(
                                MdiIcons.arrowDownBold,
                                color: Colors.red,
                              ),
                        SizedBox(width: 5),
                        Text(
                          "NGN 1500",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          action,
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF373C43),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
