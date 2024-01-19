import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 27,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 27,
          );
  }
}

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({super.key});

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Colors.blueAccent.shade100,
    Colors.purpleAccent.shade100,
    Colors.orangeAccent.shade100,
    Colors.indigoAccent.shade100,
    Colors.lightGreenAccent.shade100,
    Colors.blueGrey.shade100,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          ),
        ),
        itemCount: colors.length,
      ),
    );
  }
}
