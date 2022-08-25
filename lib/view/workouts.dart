import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gym_helper_githup/widgets/widget.dart';

import '../widgets/constant.dart';

class Workouts extends StatelessWidget {
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
        body: SingleChildScrollView(child: ProgramsWidget()),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white70,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => buildSheet());
          },
          child: Icon(
            Icons.menu_book_sharp,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  Widget buildSheet() => Container(
        padding: EdgeInsets.all(mediumPading),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'pyramid',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ).tr(),
                      const Text(
                        'pyramid_information',
                        style: TextStyle(fontSize: 15, color: kPrimaryColor),
                      ).tr(),
                      SizedBox(height: mediumPading),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'super_set',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ).tr(),
                      const Text(
                        'super_set_information',
                        style: TextStyle(fontSize: 15, color: kPrimaryColor),
                      ).tr(),
                      SizedBox(height: mediumPading),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'drop_set',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ).tr(),
                      const Text(
                        'drop_set_information',
                        style: TextStyle(fontSize: 15, color: kPrimaryColor),
                      ).tr(),
                      SizedBox(height: mediumPading),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        'Full Body',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ).tr(),
                      const Text(
                        'full_body_information',
                        style: TextStyle(fontSize: 15, color: kPrimaryColor),
                      ).tr(),
                      SizedBox(height: mediumPading),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class ProgramsWidget extends StatelessWidget {
  const ProgramsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            const Text(
              'beginner_programs',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ).tr(),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 1 - Split",
              back: ExercisesCreate(
                bodyParts: 'back'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Close Grıp Cable Row",
                      img: "assets/gifs/sirt/close-grip-cable-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Row",
                      img: "assets/gifs/sirt/dumbbell-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hyperextension",
                      img: "assets/gifs/sirt/hyperextension.gif")
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Barbell Bench Press",
                      img: "assets/gifs/gogus/barberll-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Pec Deck Fly",
                      img: "assets/gifs/gogus/pec-deck-fly.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Incline Barbell Bench Press",
                      img: "assets/gifs/gogus/incline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Pullover",
                      img: "assets/gifs/gogus/dumbbell-pullover.gif")
                ],
              ),
              arm: ExercisesCreate(
                bodyParts: 'arm'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Curl",
                      img: "assets/gifs/kol/dumbbell-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Z Bar Preacher Curl",
                      img: "assets/gifs/kol/z-bar-preacher-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hammer Curl",
                      img: "assets/gifs/kol/hammer-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Push Down",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Rope Pushdown",
                      img: "assets/gifs/arka_kol/rope-pushdown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Seated Dumbbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/seated-dumbbell-triceps-extension.gif"),
                ],
              ),
              shoulder: ExercisesCreate(
                bodyParts: 'shoulder'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Lever Shoulder Press",
                      img: "assets/gifs/omuz/lever-shoulder-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Lateral Raise",
                      img: "assets/gifs/omuz/dumbbell-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Two Dumbbell Front Raise",
                      img: "assets/gifs/omuz/two-arm-dumbbell-front-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Weighted Round Arm",
                      img: "assets/gifs/omuz/weighted-round-arm.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Seated Rear Lateral Dumbbell Raise",
                      img:
                          "assets/gifs/omuz/seated-rear-lateral-dumbbell-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Shrug",
                      img: "assets/gifs/omuz/dumbbell-shrug.gif")
                ],
              ),
              leg: ExercisesCreate(
                bodyParts: 'leg'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Press",
                      img: "assets/gifs/bacak/leg-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Lever Side Hip Adduction",
                      img: "assets/gifs/bacak/lever-side-hip-adduction.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif")
                ],
              ),
              abs: Center(),
            ),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 2 - Split",
              back: ExercisesCreate(
                bodyParts: 'back'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Assisted Pull Up",
                      img: "assets/gifs/sirt/assisted-pull-up.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "V Bar Lat PullDown",
                      img: "assets/gifs/sirt/v-bar-lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Row",
                      img: "assets/gifs/sirt/barbell-bent-over-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hyperextension",
                      img: "assets/gifs/sirt/hyperextension.gif")
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Press",
                      img: "assets/gifs/gogus/dumbbell-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Fly",
                      img: "assets/gifs/gogus/dumbbell-fly.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Decline Dumbbell Press",
                      img: "assets/gifs/gogus/decline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Incline Dumbbell Press",
                      img: "assets/gifs/gogus/incline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Inner Chest Press Machine",
                      img: "assets/gifs/gogus/inner-chest-press-machine.gif")
                ],
              ),
              arm: ExercisesCreate(
                bodyParts: 'arm'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Barbell Curl",
                      img: "assets/gifs/kol/barbell-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Close Grip Z Bar Curl",
                      img: "assets/gifs/kol/close-grip-z-bar-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Seated Hammer Curl",
                      img: "assets/gifs/kol/seated-hammer-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/dumbbell-triceps-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "High Pulley Overhead Tricep Extension",
                      img:
                          "assets/gifs/arka_kol/high-pulley-overhead-tricep-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Triceps Dips On Floor",
                      img: "assets/gifs/arka_kol/triceps-dips-on-floor.gif"),
                ],
              ),
              shoulder: ExercisesCreate(
                bodyParts: 'shoulder'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Shoulder Press",
                      img: "assets/gifs/omuz/dumbbell-shoulder-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Two Arm Cable Lateral Raise",
                      img: "assets/gifs/omuz/two-arm-cable-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Weight Plate Front Raise",
                      img: "assets/gifs/omuz/weight-plate-front-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Bent Over Lateral Raise",
                      img: "assets/gifs/omuz/bent-over-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dummbell Shrug",
                      img: "assets/gifs/omuz/dumbbell-shrug.gif"),
                ],
              ),
              leg: ExercisesCreate(
                bodyParts: 'leg'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Sled Hack Squat",
                      img: "assets/gifs/bacak/sled-hack-squat.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Barbell Sumo Squat",
                      img: "assets/gifs/bacak/barbell-sumo-squat.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif")
                ],
              ),
              abs: ExercisesCreate(
                bodyParts: 'abs'.tr(),
                widgets: const [
                  CreateListTile(
                      text: "Captains Chair Leg Raise ",
                      img: "assets/gifs/karin/captains-chair-leg-raise.gif",
                      setText: "Sets : 4 x Max"),
                  CreateListTile(
                      text: "Decline Sit Up",
                      img: "assets/gifs/karin/decline-sit-up.gif",
                      setText: "Sets : 4 x Max"),
                  CreateListTile(
                      text: "Dumbbell Side Bend",
                      img: "assets/gifs/karin/dumbbell-side-bend.gif",
                      setText: "Sets : 4 x Max"),
                  CreateListTile(
                      text: "Mountain Climber",
                      img: "assets/gifs/karin/mountain-climber.gif",
                      setText: "Sets : 4 x Max"),
                ],
              ),
            ),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 3 - Multiple",
              back: ExercisesCreate(
                bodyParts: 'back_and_biceps'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "V Bar Lat Pulldown",
                      img: "assets/gifs/sirt/v-bar-lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Barbell Bent Over Row",
                      img: "assets/gifs/sirt/barbell-bent-over-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Curl",
                      img: "assets/gifs/kol/dumbbell-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Z Bar Preacher Curl",
                      img: "assets/gifs/kol/z-bar-preacher-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Concentration Curl",
                      img: "assets/gifs/kol/concentration-curl.gif")
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest_and_triceps'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Barbell Bench Press",
                      img: "assets/gifs/gogus/barberll-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Pec Deck Fly",
                      img: "assets/gifs/gogus/pec-deck-fly.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Incline Dumbbell Press",
                      img: "assets/gifs/gogus/incline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Pushdown",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Rope Pushdown",
                      img: "assets/gifs/arka_kol/rope-pushdown.gif"),
                  CreateListTile(
                      setText: "Sets: 3 x 8  Basic definasyon 3 x 12",
                      text: "Dummbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/dumbbell-triceps-extension.gif")
                ],
              ),
              arm: const Center(),
              shoulder: ExercisesCreate(
                bodyParts: 'leg_and_shoulder'.tr(),
                widgets: const [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Press",
                      img: "assets/gifs/bacak/leg-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Shoulder Press",
                      img: "assets/gifs/omuz/dumbbell-shoulder-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Dumbbell Lateral Raise",
                      img: "assets/gifs/omuz/dumbbell-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Weight Plate Front Raise",
                      img: "assets/gifs/omuz/weight-plate-front-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 2 x 15",
                      text: "Seated Rear Lateral Dumbbell Raise",
                      img:
                          "assets/gifs/omuz/seated-rear-lateral-dumbbell-raise.gif")
                ],
              ),
              leg: const Center(),
              abs: const Center(),
            ),
            SizedBox(height: mediumPading),
          ],
        ),
        Column(
          children: [
            const Text(
              'medium_programs',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ).tr(),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 1 - Split",
              back: ExercisesCreate(
                bodyParts: 'back'.tr(),
                widgets: [
                  const CreateListTile(
                      setText: "Sets: 2 x max",
                      text: "Pull Up",
                      img: "assets/gifs/sirt/pull-up.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 " +
                          'last_set_drop'.tr(),
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Close Grıp Cable Row",
                      img: "assets/gifs/sirt/degree-incline-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 " +
                          'last_set_drop'.tr(),
                      text: "Cable Straight Arm Pulldown",
                      img: "assets/gifs/sirt/cable-straight-arm-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 " +
                          'last_set_drop'.tr(),
                      text: "Close Grip Cable Row",
                      img: "assets/gifs/sirt/close-grip-cable-row.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max ",
                      text: "Hyperextension",
                      img: "assets/gifs/sirt/hyperextension.gif")
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: 'Barbell Bench Press',
                      img: "assets/gifs/gogus/barberll-bench-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Incline Dumbbell Press",
                      img: "assets/gifs/gogus/incline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Pec Deck Fly",
                      img: "assets/gifs/gogus/pec-deck-fly.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "High Cable Crossover",
                      img: "assets/gifs/gogus/high-cable-crosover.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Dumbbell Pullover",
                      img: "assets/gifs/gogus/dumbbell-pullover.gif")
                ],
              ),
              arm: ExercisesCreate(
                bodyParts: 'arm'.tr(),
                widgets: [
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Decline Close Grip Bench To Skull Crusher",
                      img:
                          "assets/gifs/arka_kol/decline-close-grip-bench-to-skull-crusher.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Skull Crusher",
                      img: "assets/gifs/arka_kol/dumbbell-skull-crusher.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8 ' + 'last_set_drop'.tr(),
                      text: "Rope Pushdown",
                      img: "assets/gifs/arka_kol/rope-pushdown.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Seated Dumbbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/seated-dumbbell-triceps-extension.gif"),
                  const CreateListTile(
                      setText: "Sets: 2 x max ",
                      text: "Triceps Dips",
                      img: "assets/gifs/arka_kol/triceps-dips.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Z Bar Preacher Curl",
                      img: "assets/gifs/kol/z-bar-preacher-curl.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8 ' + 'last_set_drop'.tr(),
                      text: "Flexor Incline Dumbbell Curl",
                      img: "assets/gifs/kol/flexor-incline-dumbbell-curls.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Hammer Curl",
                      img: "assets/gifs/kol/hammer-curl.gif"),
                  const CreateListTile(
                      setText: 'Sets: 2 x max ',
                      text: "Hammer Curl",
                      img: "assets/gifs/kol/barbell-curl.gif"),
                ],
              ),
              shoulder: ExercisesCreate(
                bodyParts: 'shoulder'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Military",
                      img: "assets/gifs/omuz/barbell-military.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Arnold Press",
                      img: "assets/gifs/omuz/arnold-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Dumbell Lateral Raise",
                      img: "assets/gifs/omuz/dumbbell-lateral-raise.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Incline Front Raise",
                      img: "assets/gifs/omuz/incline-front-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Bent Over Lateral Raise",
                      img: "assets/gifs/omuz/bent-over-lateral-raise.gif"),
                ],
              ),
              leg: ExercisesCreate(
                bodyParts: 'leg'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Squat",
                      img: "assets/gifs/bacak/barbell-squat.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max",
                      text: "Dumbbell Goblet Curtsey Lunge",
                      img:
                          "assets/gifs/bacak/dumbbell-goblet-curtsey-lunge.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Sumo Deadlift",
                      img: "assets/gifs/bacak/barbell-sumo-deadlift.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif")
                ],
              ),
              abs: Center(),
            ),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 2 - Multiple",
              back: ExercisesCreate(
                bodyParts: 'back_and_biceps'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Close Grip Cable Row",
                      img: "assets/gifs/sirt/close-grip-cable-row.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Dumbbell Row",
                      img: "assets/gifs/sirt/dumbbell-row.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Cable Curl",
                      img: "assets/gifs/kol/cable-curl.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Dumbbell Alternate Precher Curl",
                      img: "assets/gifs/kol/dumble-alternate-precher-curl.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr() + ' - ' + 'last_set_drop'.tr(),
                      text: "Flexor Incline Dumbbell Curls",
                      img: "assets/gifs/kol/flexor-incline-dumbbell-curls.gif")
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest_and_triceps'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Dumbbell Press",
                      img: "assets/gifs/gogus/dumbbell-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Incline Dumbbell Press",
                      img: "assets/gifs/gogus/incline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr() + ' - ' + 'last_set_drop'.tr(),
                      text: "Pec Deck Fly",
                      img: "assets/gifs/gogus/pec-deck-fly.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Bench Dips",
                      img: "assets/gifs/arka_kol/bench-dips.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Dumbbell Skull Crusher",
                      img: "assets/gifs/arka_kol/dumbbell-skull-crusher.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12  " +
                          'last_set_drop'.tr(),
                      text: "Pushdown",
                      img: "assets/gifs/arka_kol/pushdown.gif")
                ],
              ),
              arm: const Center(),
              shoulder: ExercisesCreate(
                bodyParts: 'leg_and_shoulder'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Front Squat",
                      img: "assets/gifs/bacak/barbell front squat.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Barbell Lunge",
                      img: "assets/gifs/bacak/barbell-lunge.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Barbell Sumo Squat",
                      img: "assets/gifs/bacak/barbell-sumo-squat.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15'
                              ' -  ' +
                          'last_set_drop'.tr(),
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max  Basic definasyon 4 x max",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Military",
                      img: "assets/gifs/omuz/barbell-military.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15'
                              ' -  ' +
                          'last_set_drop'.tr(),
                      text: "Leaning Cable Lateral Raise",
                      img: "assets/gifs/omuz/leaning-cable-lateral-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15'
                              ' -  ' +
                          'last_set_drop'.tr(),
                      text: "Two Arm Dumbbell Front Raise",
                      img: "assets/gifs/omuz/two-arm-cable-front-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15'
                              ' -  ' +
                          'last_set_drop'.tr(),
                      text: "Face Pull",
                      img: "assets/gifs/omuz/face-pull.gif")
                ],
              ),
              leg: const Center(),
              abs: const Center(),
            ),
            SizedBox(height: mediumPading),
          ],
        ),
        Column(
          children: [
            const Text(
              'high_programs',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ).tr(),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 1 - Split",
              back: ExercisesCreate(
                bodyParts: 'back'.tr(),
                widgets: [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 " +
                          'last_set_drop'.tr(),
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Cable Straight Arm Pulldown",
                      img: "assets/gifs/sirt/cable-straight-arm-pulldown.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Dumbbell Row",
                      img: "assets/gifs/sirt/dumbbell-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 " +
                          'last_set_drop'.tr(),
                      text: "V Bar Lat Pulldown",
                      img: "assets/gifs/sirt/v-bar-lat-pulldown.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Deadlift",
                      img: "assets/gifs/sirt/barbell-deadlift.gif"),
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest'.tr(),
                widgets: [
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: 'Dumbbell Fly',
                      img: "assets/gifs/gogus/dumbbell-fly.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Dumbbell Press",
                      img: "assets/gifs/gogus/dumbbell-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Incline Barbell Bench Press",
                      img: "assets/gifs/gogus/incline-barbell-bench-press.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Low Cable Crossover",
                      img: "assets/gifs/gogus/low-cable-crossover.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Svend Press",
                      img: "assets/gifs/gogus/svend-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  CreateListTile(
                      color: Colors.indigo,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Dumbbell Pullover",
                      img: "assets/gifs/gogus/dumbbell-pullover.gif"),
                  CreateListTile(
                      color: Colors.indigo,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Chest Press Machine",
                      img: "assets/gifs/gogus/chest-press-machine.gif"),
                ],
              ),
              arm: ExercisesCreate(
                bodyParts: 'arm'.tr(),
                widgets: [
                  CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12 " +
                          'last_set_drop'.tr(),
                      text: "Push Down",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12 " +
                          'last_set_drop'.tr(),
                      text: "Cable Curl",
                      img: "assets/gifs/kol/cable-curl.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'pyramid'.tr(),
                      text: "Z Bar Preacher Curl",
                      img: "assets/gifs/kol/z-bar-preacher-curl.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'pyramid'.tr(),
                      text: "Dumbbell Skull Crusher",
                      img: "assets/gifs/arka_kol/dumbbell-skull-crusher.gif"),
                  const CreateListTile(
                      color: Colors.indigo,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Seated Hammer Curl",
                      img: "assets/gifs/kol/seated-hammer-curl.gif"),
                  const CreateListTile(
                      color: Colors.indigo,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Seated One Arm Dumbbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/seated-one-arm-dumbbell-triceps-extension.gif"),
                  const CreateListTile(
                      color: Colors.deepOrangeAccent,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Bent Over Triceps Kickback",
                      img:
                          "assets/gifs/arka_kol/bent-over-tricep-kickback.gif"),
                  const CreateListTile(
                      color: Colors.deepOrangeAccent,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Zottman Curl",
                      img: "assets/gifs/kol/zottman-curl.gif"),
                ],
              ),
              shoulder: ExercisesCreate(
                bodyParts: 'shoulder'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Dumbbell Shoulder Press",
                      img: "assets/gifs/omuz/dumbbell-shoulder-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Cable Lateral Raise",
                      img: "assets/gifs/omuz/cable-lateral-raise.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Two Arm Cable Front Raise",
                      img: "assets/gifs/omuz/two-arm-cable-front-raise.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15",
                      text: "Weight Plate Front Raise",
                      img: "assets/gifs/omuz/weight-plate-front-raise.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Lever Shoulder Press",
                      img: "assets/gifs/omuz/lever-shoulder-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'last_set_drop'.tr(),
                      text: "Dumbell Reverse Fly",
                      img: "assets/gifs/omuz/dumbbell-reverse-fly.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Dumbell Shrug",
                      img: "assets/gifs/omuz/dumbbell-shrug.gif"),
                ],
              ),
              leg: ExercisesCreate(
                bodyParts: 'leg'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Hack Squat",
                      img: "assets/gifs/bacak/barbell-hack-squat.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Leg Press",
                      img: "assets/gifs/bacak/leg-press.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  const CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ',
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max",
                      text: "Barbell Lunge",
                      img: "assets/gifs/bacak/barbell-lunge.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8 ' + 'last_set_drop'.tr(),
                      text: "Lever Side Hip Adduction",
                      img: "assets/gifs/bacak/lever-side-hip-adduction.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x max",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif")
                ],
              ),
              abs: ExercisesCreate(
                bodyParts: 'abs'.tr(),
                widgets: const [
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x max',
                      text: "Abs Whell Rollout",
                      img: "assets/gifs/karin/abs-wheel-rollout.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x max',
                      text: "Bicycle Crunch",
                      img: "assets/gifs/karin/bicycle-crunch.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x max',
                      text: "Captains Leg Raise",
                      img: "assets/gifs/karin/captains-chair-leg-raise.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x max',
                      text: "Mountain Climber",
                      img: "assets/gifs/karin/mountain-climber.gif"),
                  CreateListTile(
                      color: Colors.indigo,
                      setText: 'Sets: 4 x max',
                      text: "Side Bridge",
                      img: "assets/gifs/karin/side-bridge.gif"),
                  CreateListTile(
                      color: Colors.indigo,
                      setText: 'Sets: 4 x max',
                      text: "Standing Cable Twist",
                      img: "assets/gifs/karin/standing-cable-twist.gif"),
                  CreateListTile(
                      color: Colors.deepOrangeAccent,
                      setText: 'Sets: 4 x max',
                      text: "Weighted Front Plank",
                      img: "assets/gifs/karin/weighted-front-plank.gif"),
                  CreateListTile(
                      color: Colors.deepOrangeAccent,
                      setText: 'Sets: 4 x max',
                      text: "Seated Bench Leg Pull In",
                      img: "assets/gifs/karin/seated-bench-leg-pull-in.gif"),
                  CreateListTile(
                      color: Colors.deepOrangeAccent,
                      setText: 'Sets: 4 x max',
                      text: "Russian Twist",
                      img: "assets/gifs/karin/russian-twist.gif"),
                ],
              ),
            ),
            SizedBox(height: smallPading),
            CreatedProgram(
              programNum: "Program 2 - Multiple",
              back: ExercisesCreate(
                bodyParts: 'back_and_biceps'.tr(),
                widgets: [
                  CreateListTile(
                      setText: 'pyramid '.tr() + ' last_set_drop'.tr(),
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Close Grip Cable Row",
                      img: "assets/gifs/sirt/close-grip-cable-row.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Cable Straight Arm Pulldown",
                      img: "assets/gifs/sirt/cable-straight-arm-pulldown.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Incline Barbell Row",
                      img: "assets/gifs/sirt/incline-barbell-row.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "One Arm Barbell Row",
                      img: "assets/gifs/sirt/one-arm-barbell-row.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Deadlift",
                      img: "assets/gifs/sirt/barbell-deadlift.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'last_set_drop'.tr(),
                      text: "Lying Cable Curl",
                      img: "assets/gifs/kol/lying-cable-curl.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Zottman Curl",
                      img: "assets/gifs/kol/zottman-curl.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ',
                      text: "Close Grip Z Bar Curl",
                      img: "assets/gifs/kol/close-grip-z-bar-curl.gif"),
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'chest_and_triceps'.tr(),
                widgets: [
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Pec Deck Fly",
                      img: "assets/gifs/gogus/pec-deck-fly.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Dumbbell Press",
                      img: "assets/gifs/gogus/dumbbell-press.gif"),
                  const CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 12",
                      text: "Incline Barbell Press",
                      img: "assets/gifs/gogus/incline-barbell-bench-press.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Low Cable Crossover",
                      img: "assets/gifs/gogus/low-cable-crossover.gif"),
                  CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12 ' +
                          'super_set'.tr(),
                      text: "Close Grip Incline Dumbbell Press",
                      img:
                          "assets/gifs/gogus/close-grip-incline-dumbbell-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  const CreateListTile(
                      setText: "Sets: 3 x max ",
                      text: "Chest Dips",
                      img: "assets/gifs/gogus/chest-dips.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12' +
                          'last_set_drop'.tr(),
                      text: "Kneling Cable Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/kneeling-cable-triceps-extension.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Decline Close Grip Bench To Skull Crusher",
                      img:
                          "assets/gifs/arka_kol/decline-close-grip-bench-to-skull-crusher.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 12' +
                          'last_set_drop'.tr(),
                      text: "Pushdown",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      setText: 'Sets: 2 x max' + 'last_set_drop'.tr(),
                      text: "Bench Dips",
                      img: "assets/gifs/arka_kol/bench-dips.gif"),
                ],
              ),
              arm: const Center(),
              shoulder: ExercisesCreate(
                bodyParts: 'leg_and_shoulder'.tr(),
                widgets: [
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      color: Colors.teal,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'super_set'.tr(),
                      text: "Leg Press",
                      img: "assets/gifs/bacak/leg-press.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Barbell Lunge",
                      img: "assets/gifs/bacak/barbell-lunge.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x max ',
                      text: "Lever Side Hip Adduction",
                      img: "assets/gifs/bacak/lever-side-hip-adduction.gif"),
                  const CreateListTile(
                      setText: 'Sets: 4 x max',
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif"),
                  CreateListTile(
                      setText: 'pyramid'.tr(),
                      text: "Lever Shoulder",
                      img: "assets/gifs/omuz/lever-shoulder-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'last_set_drop'.tr(),
                      text: "Leaning Cable Lateral Raise",
                      img: "assets/gifs/omuz/leaning-cable-lateral-raise.gif"),
                  const CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ',
                      text: "Incline Front Raise",
                      img: "assets/gifs/omuz/incline-front-raise.gif"),
                  const CreateListTile(
                      color: Colors.amber,
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ',
                      text: "Two Arm Dumbbell Front Raise",
                      img: "assets/gifs/omuz/two-arm-dumbbell-front-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 4 x 8  Basic definasyon 4 x 15 ' +
                          'last_set_drop'.tr(),
                      text: "Seated Rear Lateral Dumbbell Raise",
                      img:
                          "assets/gifs/omuz/seated-rear-lateral-dumbbell-raise.gif"),
                ],
              ),
              leg: const Center(),
              abs: const Center(),
            ),
            SizedBox(height: mediumPading),
          ],
        ),
        Column(
          children: [
            const Text(
              'Push - Pull - FullBody ',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ).tr(),
            SizedBox(height: smallPading),
            const CreatedProgram(
              programNum: "Push - Pull - Full Body",
              back: ExercisesCreate(
                bodyParts: 'Pull ',
                widgets: [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Cable Rear Pulldown",
                      img: "assets/gifs/sirt/cable-rear-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Close Grip Cable Row",
                      img: "assets/gifs/sirt/close-grip-cable-row.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "V Bar Lat Pulldown",
                      img: "assets/gifs/sirt/v-bar-lat-pulldown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Hyperextesion",
                      img: "assets/gifs/sirt/hyperextension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Z Bar Preacher Curl",
                      img: "assets/gifs/kol/z-bar-preacher-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Seated Biceps Curl",
                      img: "assets/gifs/kol/seated-biceps-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Concentration Curl",
                      img: "assets/gifs/kol/concentration-curl.gif"),
                ],
              ),
              chest: ExercisesCreate(
                bodyParts: 'Push',
                widgets: [
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: 'Barbell Bench Press',
                      img: "assets/gifs/gogus/barberll-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Incline Barbell Bench Press",
                      img: "assets/gifs/gogus/incline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Decline Barbell Bench Press",
                      img: "assets/gifs/gogus/decline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Lower Pec Deck Fly",
                      img: "assets/gifs/gogus/lever-pec-deck-fly_chest.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Lever Shoulder Press",
                      img: "assets/gifs/omuz/lever-shoulder-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Seated Dumbbell Lateral Raise",
                      img:
                          "assets/gifs/omuz/seated-dumbbell-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Bent Over Lateral Raise",
                      img: "assets/gifs/omuz/bent-over-lateral-raise.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Pushdown",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Dumbbell Triceps Extension",
                      img:
                          "assets/gifs/arka_kol/dumbbell-triceps-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Leg Press",
                      img: "assets/gifs/bacak/leg-press.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Barbell Sumo Squat",
                      img: "assets/gifs/bacak/barbell-sumo-squat.gif"),
                  CreateListTile(
                      setText: "Sets: 4 x 8  Basic definasyon 4 x 15 ",
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif"),
                ],
              ),
              leg: ExercisesCreate(
                bodyParts: 'Full Body',
                widgets: [
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Barbell Squat",
                      img: "assets/gifs/bacak/barbell-squat.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Leg Extension",
                      img: "assets/gifs/bacak/leg-extension.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Leg Curl",
                      img: "assets/gifs/bacak/leg-curl.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Hack Squat Calf Raise",
                      img: "assets/gifs/bacak/hack-squat-calf-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Lat Pulldown",
                      img: "assets/gifs/sirt/lat-pulldown.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Barbell Bent Over Row",
                      img: "assets/gifs/sirt/barbell-bent-over-row.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Seated Cable Row",
                      img: "assets/gifs/sirt/seated-cable-row.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Barbell Bench Press",
                      img: "assets/gifs/gogus/barberll-bench-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Incline Barbell Bench Press",
                      img: "assets/gifs/gogus/incline-barbell-bench-press.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Lever Pec Deck Fly",
                      img: "assets/gifs/gogus/lever-pec-deck-fly_chest.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Barbell Military",
                      img: "assets/gifs/omuz/barbell-military.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Dumbbell Lateral To Front Raise",
                      img:
                          "assets/gifs/omuz/dumbbell-lateral-to-front-raise.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Dumbbell Reverse Fly",
                      img: "assets/gifs/omuz/dumbbell-reverse-fly.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Pushdown",
                      img: "assets/gifs/arka_kol/pushdown.gif"),
                  CreateListTile(
                      setText: 'Sets: 3 x 8  Basic definasyon 3 x 12 ',
                      text: "Seated Biceps Curl",
                      img: "assets/gifs/kol/seated-biceps-curl.gif"),
                ],
              ),
              abs: Center(),
              shoulder: Center(),
              arm: Center(),
            ),
            SizedBox(height: mediumPading),
          ],
        ),
      ],
    );
  }
}

class CreatedProgram extends StatelessWidget {
  final String programNum;
  final Widget? back;
  final Widget? chest;
  final Widget? shoulder;
  final Widget? arm;
  final Widget? leg;
  final Widget? abs;
  const CreatedProgram({
    Key? key,
    required this.programNum,
    this.back = null,
    this.chest = null,
    this.shoulder = null,
    this.arm = null,
    this.leg = null,
    this.abs = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: false,
      iconColor: Colors.white,
      title: Text(
        programNum,
        style: const TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w700),
      ),
      children: [
        Column(
          children: [chest!, arm!, back!, shoulder!, leg!, abs!],
        )
      ],
    );
  }
}

class ExercisesCreate extends StatelessWidget {
  const ExercisesCreate({
    Key? key,
    required this.bodyParts,
    required this.widgets,
  }) : super(key: key);

  final String bodyParts;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: false,
      iconColor: Colors.white,
      title: Text(
        bodyParts,
        style: const TextStyle(
            color: Colors.white70, fontSize: 19, fontWeight: FontWeight.w500),
      ),
      children: widgets,
    );
  }
} //   ExpansionTile(

class CreateListTile extends StatelessWidget {
  final String text;
  final String img;
  final String setText;
  final Color? color;
  const CreateListTile({
    Key? key,
    required this.text,
    required this.img,
    required this.setText,
    this.color = Colors.transparent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      subtitle: Text(setText),
      leading: Image.asset(img),
      textColor: Colors.white,
      tileColor: color,
    );
  }
}
