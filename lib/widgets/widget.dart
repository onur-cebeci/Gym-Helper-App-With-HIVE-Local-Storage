import 'package:flutter/material.dart';
import 'package:gym_helper_githup/widgets/constant.dart';

Widget appBarContainer(
    Size size, BuildContext context, String img, String title) {
  return Container(
    height: size.height / 5.4,
    width: size.width / 2,
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Image.asset(
            "assets/images/$img",
            height: size.height - 48,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: kPrimaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.3),
                  blurRadius: 2,
                  spreadRadius: 1,
                  //gölgenin pozizyonu nu değiştirir
                  offset: Offset(0, 6),
                ),
              ]),
        ),
        Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ],
    ),
  );
}

PreferredSizeWidget AppBarWidget(BuildContext context, bool state) {
  return AppBar(
    centerTitle: true,
    leading: state == true
        ? InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded))
        : null,
    title: Row(
      children: [
        Image.asset(
          "assets/icons/icon.png",
          color: Colors.white,
        ),
        SizedBox(width: smallPading),
        Text("GymHelper",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ],
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
  );
}
