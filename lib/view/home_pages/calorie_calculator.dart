import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant.dart';

class CaloriHesabi extends StatefulWidget {
  TextEditingController widthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  State<CaloriHesabi> createState() => _CaloriHesabiState();
}

class _CaloriHesabiState extends State<CaloriHesabi> {
  double width = 0;
  double height = 0;
  double age = 0;
  double sonuc = 0;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 450,
      width: _size.width,
      decoration: BoxDecoration(
          color: kShadowColor, borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: const Text(
              'calorie_calculator',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ).tr(),
          ),
          SizedBox(height: mediumPading),
          Column(
            children: [
              const Text('form_shape',
                      style: TextStyle(fontSize: 10, color: Colors.white70))
                  .tr(),
              SizedBox(height: mediumPading),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      controller: widget.widthController,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        counterText: "",
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor)),
                        hintText: 'weight'.tr(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 150,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      controller: widget.heightController,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        counterText: "",
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: kPrimaryColor)),
                        hintText: 'lenght'.tr(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: mediumPading),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                width: 150,
                child: TextField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  maxLength: 2,
                  keyboardType: TextInputType.number,
                  controller: widget.ageController,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    counterText: "",
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor)),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor)),
                    hintText: 'age'.tr(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: bigPading),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
                width: 170,
                child: MaterialButton(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: () {
                    setState(() {
                      result();
                    });
                  },
                  child: const Text(
                    'calculate',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ).tr(),
                ),
              ),
            ],
          ),
          SizedBox(height: mediumPading),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sonuc != 0
                  ? Text(
                      "${sonuc.toInt()}" + " " + 'calorie'.tr(),
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  : const Text(""),
            ],
          ),
        ],
      ),
    );
  }

  result() {
    setState(() {
      width = (double.parse(widget.widthController.text) * 13.7) + 66;
      height = double.parse(widget.heightController.text) * 5;
      age = (double.parse(widget.ageController.text)) * 6.8;

      sonuc = 100 >= (width + height - age) * 1.45
          ? 0
          : (width + height - age) * 1.45;
    });
  }
}
