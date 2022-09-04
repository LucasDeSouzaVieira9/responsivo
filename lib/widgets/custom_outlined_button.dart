import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {Key? key,
      required this.imageAsset,
      required this.label,
      required this.size,
      this.backgroundColor})
      : super(key: key);

  final Size size;
  final String label;
  final String imageAsset;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.transparent,
          side: BorderSide(
              width: 2, color: size.width > 1200 ? Colors.black : Colors.white),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: SizedBox(
        width: size.width * .80,
        height: 60,
        child: Row(
          children: [
            Image.asset(
              imageAsset,
              width: 27,
            ),
            Expanded(
                child: Center(
                    child: Padding(
              padding: const EdgeInsets.only(right: 27),
              child: Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
            )))
          ],
        ),
      ),
    );
  }
}
