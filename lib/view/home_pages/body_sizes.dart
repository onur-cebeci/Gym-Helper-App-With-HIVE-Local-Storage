import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_helper_githup/data/hive_local_storage.dart';
import 'package:gym_helper_githup/models/storage.dart';

import '../../constant.dart';

class VucutOlculerim extends StatefulWidget {
  const VucutOlculerim({Key? key}) : super(key: key);

  @override
  State<VucutOlculerim> createState() => _VucutOlculerimState();
}

class _VucutOlculerimState extends State<VucutOlculerim> {
  late List<Storage> _allList;
  late HiveLocalStorage _hiveLocalStorage;
  @override
  void initState() {
    super.initState();
    _hiveLocalStorage = HiveLocalStorage();
    _allList = <Storage>[];
    _getAllStorageFromDb();
  }

  final formKey = GlobalKey<FormState>();

  final TextEditingController _shoulder = TextEditingController();

  final TextEditingController _gogus = TextEditingController();

  final TextEditingController _sagKol = TextEditingController();

  final TextEditingController _solKol = TextEditingController();

  final TextEditingController _sirt = TextEditingController();

  final TextEditingController _bel = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          height: 400,
          width: _size.width,
          decoration: BoxDecoration(
              color: kShadowColor, borderRadius: BorderRadius.circular(25)),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'my_body_sizes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ).tr(),
                ),
                SizedBox(height: bigPading),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 150,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            maxLength: 3,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            keyboardType: TextInputType.number,
                            controller: _shoulder,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              focusColor: Colors.white,
                              hintText: 'shoulder'.tr(),
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
                            controller: _gogus,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              hintText: 'chest'.tr(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: smallPading),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 150,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            maxLength: 2,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            keyboardType: TextInputType.number,
                            controller: _solKol,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              focusColor: Colors.white,
                              hintText: 'left_arm'.tr(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 150,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            controller: _sagKol,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              hintText: 'right_arm'.tr(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: smallPading),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 150,
                          child: TextField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            maxLength: 3,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            keyboardType: TextInputType.number,
                            controller: _sirt,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              hintText: 'back'.tr(),
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
                            controller: _bel,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              counterText: "",
                              enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: kPrimaryColor)),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white70)),
                              hintText: 'waist'.tr(),
                            ),
                          ),
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
                          width: 170,
                          child: MaterialButton(
                            color: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            onPressed: () async {
                              var saveBodySizes = Storage.create(
                                  boyun: _shoulder.text.trim().isNotEmpty
                                      ? _shoulder.text.trim()
                                      : " --- ",
                                  gogus: _gogus.text.trim().isNotEmpty
                                      ? _gogus.text.trim()
                                      : " --- ",
                                  solKol: _solKol.text.trim().isNotEmpty
                                      ? _solKol.text.trim()
                                      : " --- ",
                                  sagKol: _sagKol.text.trim().isNotEmpty
                                      ? _sagKol.text.trim()
                                      : " --- ",
                                  sirt: _sirt.text.trim().isNotEmpty
                                      ? _sirt.text.trim()
                                      : " --- ",
                                  bel: _bel.text.trim().isNotEmpty
                                      ? _bel.text.trim()
                                      : " --- ",
                                  time: DateTime.now());
                              _allList.add(saveBodySizes);
                              await _hiveLocalStorage.addIndex(
                                  index: saveBodySizes);
                              setState(() {});
                            },
                            child: const Text(
                              'save',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ).tr(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: smallPading),
        SizedBox(
          child: SingleChildScrollView(
            child: _allList.isNotEmpty
                ? Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    height: 280,
                    width: _size.width,
                    decoration: BoxDecoration(
                        color: kShadowColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: ListView.builder(
                        itemCount: _allList.length,
                        itemBuilder: (context, index) {
                          var _listIndex = _allList[index];
                          return Dismissible(
                            direction: DismissDirection.startToEnd,
                            background: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: EdgeInsets.all(smallPading),
                                child: Row(
                                  children: [
                                    const Icon(Icons.remove),
                                    const Text(
                                      'deleting_data',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ).tr(),
                                  ],
                                ),
                              ),
                            ),
                            key: Key(_listIndex.id),
                            onDismissed: (direction) async {
                              _allList.removeAt(index);
                              await _hiveLocalStorage.deleteIndex(
                                  index: _listIndex);
                              setState(() {});
                            },
                            child: BodySizesWidget(
                                size: _size, listIndex: _listIndex),
                          );
                        }),
                  )
                : Container(),
          ),
        ),
      ],
    );
  }

  void _getAllStorageFromDb() async {
    _allList = await _hiveLocalStorage.getAllList();

    setState(() {});
  }
}

class BodySizesWidget extends StatefulWidget {
  const BodySizesWidget({
    Key? key,
    required Size size,
    required Storage listIndex,
  })  : _size = size,
        _listIndex = listIndex,
        super(key: key);

  final Size _size;
  final Storage _listIndex;

  @override
  State<BodySizesWidget> createState() => _BodySizesWidgetState();
}

class _BodySizesWidgetState extends State<BodySizesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 80,
        width: widget._size.width - 40,
        decoration: BoxDecoration(
            color: Colors.white38.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: kPrimaryColor),
            shape: BoxShape.rectangle),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateFormat('y-MM-dd').format(widget._listIndex.time),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: mediumPading,
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Spacer(flex: 1),
                    const Text(
                      'shoulder',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                    const Text(
                      'chest',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                    const Text(
                      'left_arm',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                    const Text(
                      'right_arm',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                    const Text(
                      'back',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                    const Text(
                      'waist',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ).tr(),
                    const Spacer(flex: 1),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: smallPading, right: mediumPading),
                  child: Row(
                    children: [
                      Text(
                        "  " + widget._listIndex.omuz,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                      const Spacer(flex: 3),
                      Text(
                        "" + widget._listIndex.gogus,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                      const Spacer(flex: 3),
                      Text(
                        widget._listIndex.solKol + "   ",
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                      const Spacer(flex: 3),
                      Text(
                        widget._listIndex.sagKol,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                      const Spacer(flex: 3),
                      Text(
                        widget._listIndex.sirt,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                      const Spacer(flex: 2),
                      Text(
                        widget._listIndex.bel,
                        style:
                            const TextStyle(fontSize: 16, color: kPrimaryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
