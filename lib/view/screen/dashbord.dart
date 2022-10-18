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
          child: SingleChildScrollView(
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
                  title: appText.aboutdialog,
                  onTap: () {
                    routeToNamed(routeName: RouteName().aboutDialogScreen);
                  },
                ),
                ClassesCard(
                  title: appText.actionchip,
                  onTap: () {
                    routeToNamed(routeName: RouteName().actionChipScreen);
                  },
                ),
                ClassesCard(
                  title: appText.actionListener,
                  onTap: () {
                    routeToNamed(routeName: RouteName().actionListener);
                  },
                ),
                ClassesCard(
                  title: appText.actions,
                  onTap: () {
                    routeToNamed(routeName: RouteName().actions);
                  },
                ),
                ClassesCard(
                  title: appText.activateAction,
                  onTap: () {
                    routeToNamed(routeName: RouteName().activateaction);
                  },
                ),
                ClassesCard(
                  title: appText.align,
                  onTap: () {
                    routeToNamed(routeName: RouteName().alignScreen);
                  },
                ),
                ClassesCard(
                  title: appText.alignmentgeometry,
                  onTap: () {
                    routeToNamed(
                        routeName: RouteName().alignmentGeomentryScreen);
                  },
                ),
                ClassesCard(
                  title: appText.safeArea,
                  onTap: () {
                    routeToNamed(routeName: RouteName().safeAreaScreen);
                  },
                ),
                ClassesCard(
                  title: appText.safeArea,
                  onTap: () {
                    routeToNamed(routeName: RouteName().expandedScreen);
                  },
                ),
                ClassesCard(
                  title: appText.wrap,
                  onTap: () {
                    routeToNamed(routeName: RouteName().wrapScreen);
                  },
                ),
                ClassesCard(
                  title: appText.animatedContainer,
                  onTap: () {
                    routeToNamed(
                        routeName: RouteName().animatedContainerScreen);
                  },
                ),
                ClassesCard(
                  title: appText.opacity,
                  onTap: () {
                    routeToNamed(routeName: RouteName().opacityScreen);
                  },
                ),
                ClassesCard(
                  title: appText.futurebuilder,
                  onTap: () {
                    routeToNamed(routeName: RouteName().futureBuilderScreen);
                  },
                ),
                ClassesCard(
                  title: appText.fadetransition,
                  onTap: () {
                    routeToNamed(routeName: RouteName().fadeTransitionScreen);
                  },
                ),
                ClassesCard(
                  title: appText.floatingActionButton,
                  onTap: () {
                    routeToNamed(
                        routeName: RouteName().floatingActionButtonScreen);
                  },
                ),
                ClassesCard(
                  title: appText.pageview,
                  onTap: () {
                    routeToNamed(routeName: RouteName().pageViewScreen);
                  },
                ),
                ClassesCard(
                  title: appText.table,
                  onTap: () {
                    routeToNamed(routeName: RouteName().tableScreen);
                  },
                ),
                ClassesCard(
                  title: appText.fadeInImage,
                  onTap: () {
                    routeToNamed(routeName: RouteName().fadeinImageScreen);
                  },
                ),
                ClassesCard(
                  title: appText.streamBuilder,
                  onTap: () {
                    routeToNamed(routeName: RouteName().streamBuilderScreen);
                  },
                ),
                ClassesCard(
                  title: appText.tooltip,
                  onTap: () {
                    routeToNamed(routeName: RouteName().tooltipScreen);
                  },
                ),
                ClassesCard(
                  title: appText.transform,
                  onTap: () {
                    routeToNamed(routeName: RouteName().transformScreen);
                  },
                ),
                ClassesCard(
                  title: appText.backdropfilter,
                  onTap: () {
                    routeToNamed(routeName: RouteName().backDropFilterScreen);
                  },
                ),
                ClassesCard(
                  title: appText.animatedBuilder,
                  onTap: () {
                    routeToNamed(routeName: RouteName().animatedBuilderScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
