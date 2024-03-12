import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/image_slide_show.dart';
import 'package:flutter/material.dart';

class PropertyItem extends StatefulWidget {
  const PropertyItem({super.key});

  @override
  State<PropertyItem> createState() => _PropertyItemState();
}

class _PropertyItemState extends State<PropertyItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8,
      child: Column(
        children: [
          ImageSlideShow(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2.000 EGP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.window,
                        color: Colors.grey,
                      ),
                      Text('150 M^2',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                      Icon(
                        Icons.bedroom_child_sharp,
                        color: Colors.grey,
                      ),
                      Text('3',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey)),
                      Icon(
                        Icons.bathroom,
                        color: Colors.grey,
                      ),
                      Text('2',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey))
                    ],
                  ),
                  Text('Nile Cornishe Street ,Maadi ,Cairo',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
