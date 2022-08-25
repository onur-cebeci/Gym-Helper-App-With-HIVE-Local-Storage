import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper_githup/constant.dart';
import 'package:gym_helper_githup/widgets/widget.dart';

class Supplements extends StatelessWidget {
  const Supplements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              colors: [
            kShadowColor,
            kPrimaryColor,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(context, true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                height: 1,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: smallPading),
              Column(
                children: [
                  informationCard(
                      'protein_powder'.tr(), 'protein_powder_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard(
                      'carbohydrate'.tr(), 'carbohydrate_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard(
                      'amino_acid'.tr(), 'amino_acid_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard('bcaa'.tr(), 'bcaa_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard('creatine'.tr(), 'creatine_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard(
                      'l-carnitine'.tr(), 'l-carnitine_information'.tr()),
                  SizedBox(height: smallPading),
                  informationCard(
                      'glutamine'.tr(), 'glutamine_information'.tr()),
                  SizedBox(height: bigPading),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container informationCard(String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: mediumPading, left: smallPading),
            child: Text(title,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                    inherit: false)),
          ),
          SizedBox(height: smallPading),
          Padding(
            padding: EdgeInsets.all(smallPading),
            child: Text(subtitle + "\n",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
