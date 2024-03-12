import 'package:flutter/material.dart';

class ImagePlaceHolder extends StatefulWidget {
  const ImagePlaceHolder({super.key, required this.imgpath});
  final String imgpath;

  @override
  State<ImagePlaceHolder> createState() => _ImagePlaceHolderState();
}

class _ImagePlaceHolderState extends State<ImagePlaceHolder>
    with TickerProviderStateMixin {
  late AnimationController sizeanimationcontroller;
  late AnimationController coloranimationcontroller;
  late Animation changeColor;
  bool isActive = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sizeanimationcontroller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        value: 1,
        upperBound: 1.5,
        lowerBound: 1);

    coloranimationcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    changeColor = ColorTween(begin: Colors.grey, end: Colors.red)
        .animate(coloranimationcontroller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: Image.asset(
            widget.imgpath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}
