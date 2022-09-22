import 'package:flutter/material.dart';
import 'package:flutter_libraries/navigations/navigations.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/view/widgets/classes_card.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClassesCard(
                title: appText.absorpointer,
                onTap: () {
                  routeToNamed(routeName: RouteName().absorbpointerscreen);
                },
              ),
              ClassesCard(
                title: appText.accumulator,
                onTap: () {
                  routeToNamed(routeName: RouteName().accumulatorscreen);
                },
              ),
              ClassesCard(
                title: appText.alignment,
                onTap: () {
                  routeToNamed(routeName: RouteName().alignmentsScreen);
                },
              ),
              ClassesCard(
                title: appText.alignmentdirectional,
                onTap: () {
                  routeToNamed(
                      routeName: RouteName().alignmentDirectionalScreen);
                },
              ),
              ClassesCard(
                title: appText.aboutDialog,
                onTap: () {
                  routeToNamed(routeName: RouteName().aboutDialogScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
