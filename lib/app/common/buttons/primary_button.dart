import 'package:flutter/material.dart';
import 'package:way/style/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final double horizPadding;
  final double vertPadding;
  final bool isEnable;
  final VoidCallback onTap;
  final bool loading;
  final Color color;
  final double width;
  final double height;
  const PrimaryButton(
      {super.key,
      required this.title,
      this.color = CustomColors.primaryMaroon,
      required this.onTap,
      this.horizPadding = 0,
      this.vertPadding = 0,
      this.isEnable = true,
      this.loading = false,
      this.width = 0.0,
      this.height = 0.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizPadding, vertical: vertPadding),
      child: SizedBox(
        width: (width > 0.0) ? width : MediaQuery.of(context).size.width / 1.7,
        height: (height > 0.0) ? height : 52,
        child: MaterialButton(
          onPressed: isEnable ? onTap : null,
          elevation: 2,
          color: isEnable ? color : CustomColors.disableGrey,
          splashColor: Colors.white30,
          highlightColor: Colors.white30,
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: loading
                ? CircularProgressIndicator()
                : Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.apply(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
