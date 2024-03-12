import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/image_place_holder.dart';
import 'package:flutter/material.dart';

class ImageSlideShow extends StatefulWidget {
  const ImageSlideShow({super.key});

  @override
  State<ImageSlideShow> createState() => _ImageSlideShow();
}

final List<String> imgpaths = [
  'assets/images/villa2.jpg',
  'assets/images/villa1.jpg',
  'assets/images/villa3.jpg',
  'assets/images/villa4.jpg'
];
late List<Widget> pages;
int activeimg = 0;
PageController _pageController = PageController(initialPage: 0);

class _ImageSlideShow extends State<ImageSlideShow>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController sizeanimationcontroller;
  late AnimationController coloranimationcontroller;
  late Animation changeColor;
  bool isActive = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages = List.generate(
        imgpaths.length, (index) => ImagePlaceHolder(imgpath: imgpaths[index]));
    sizeanimationcontroller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 200),
        value: 1,
        upperBound: 1.5,
        lowerBound: 1);

    coloranimationcontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));

    changeColor = ColorTween(
            begin: const Color.fromARGB(130, 84, 84, 84).withOpacity(.7),
            end: Colors.red)
        .animate(coloranimationcontroller);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 4,
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                activeimg = value;
              });
            },
            controller: _pageController,
            itemCount: imgpaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: pages[index],
              );
            },
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
                pages.length,
                (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          /*  _pageController.animateToPage(index,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn);*/
                        },
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: activeimg == index
                              ? const Color.fromARGB(255, 255, 255, 255)
                              : Colors.grey,
                        ),
                      ),
                    )),
          ),
        ),
      ),
      Positioned(
          top: 5,
          right: 20,
          child: ScaleTransition(
            scale: sizeanimationcontroller,
            child: AnimatedBuilder(
              animation: coloranimationcontroller,
              builder: (context, child) {
                return IconButton(
                  onPressed: () {
                    sizeanimationcontroller.forward().then((value) => {
                          isActive
                              ? coloranimationcontroller.forward()
                              : coloranimationcontroller.reverse(),
                          sizeanimationcontroller.reverse(),
                        });
                    isActive = !isActive;
                  },
                  icon: const Icon(
                    Icons.favorite,
                    size: 30,
                  ),
                  color: changeColor.value,
                );
              },
            ),
          )),
    ]);
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
