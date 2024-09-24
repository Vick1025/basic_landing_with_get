import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicButton extends StatefulWidget {
  const BasicButton({super.key,
    this.backColor = const Color(0XFFE5BA73),
    required this.btnText,
    this.btnWidth = 100,
    this.btnHeight = 40,
    required this.onTap,
    this.maxLineOfButtonText = 1,
    this.isSelected = false,
  });

  final Color backColor;
  final String btnText;
  final double btnWidth;
  final double btnHeight;
  final Function onTap;
  final int maxLineOfButtonText;
  final bool isSelected;

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.btnWidth,
      height: widget.btnHeight,
      child: ElevatedButton(
        onPressed: (){
          widget.onTap();
        },
        child: SizedBox(
          width: widget.btnWidth,
          height: widget.btnHeight,
          child: Align(
            alignment: Alignment.center,
            child: AutoSizeText(
              widget.btnText,
              maxLines: widget.maxLineOfButtonText,
              minFontSize: 6,
              textAlign: TextAlign.center,
              style: Theme.of(Get.context!).textTheme.labelMedium,
            ),
          ),
        ),
      ),
    );
  }
}
