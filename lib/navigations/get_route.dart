import 'package:flutter_libraries/class_a/view/action_listener.dart';
import 'package:flutter_libraries/class_a/view/actions.dart';
import 'package:flutter_libraries/class_a/view/viewa.dart';
import 'package:flutter_libraries/navigations/navigations.dart';
import 'package:flutter_libraries/widgetoftheweek/view/view.dart';
import 'package:get/get.dart';

class GetRoutes extends RouteName {
  List<GetPage> get routes => [
        GetPage(
            name: absorbpointerscreen, page: () => const AbsorbPointerScreen()),
        GetPage(name: accumulatorscreen, page: () => const AccumulatorScreen()),
        GetPage(name: alignmentsScreen, page: () => const AlignmentsScreen()),
        GetPage(
            name: alignmentDirectionalScreen,
            page: () => const AlignmentDirectionalScreen()),
        GetPage(name: aboutDialogScreen, page: () => const AboutDialogScreen()),
        GetPage(name: actionChipScreen, page: () => const ActionChipScreen()),
        GetPage(name: actionListener, page: () => const ActionListenerScreen()),
        GetPage(name: actions, page: () => const ActionScreen()),
        GetPage(name: activateaction, page: () => const AtivatactionScreen()),
        GetPage(
            name: alignmentGeomentryScreen,
            page: () => const AlignmentGeomentryScreen()),
        GetPage(name: safeAreaScreen, page: () => const SafeAreaScreen()),
        GetPage(name: expandedScreen, page: () => const ExpandedScreen()),
        GetPage(name: wrapScreen, page: () => const WrapScreen()),
        GetPage(name: animatedContainerScreen, page: () => const AnimatedContainerScreen()),
        GetPage(name: futureBuilderScreen, page: () => const FutureBuilderScreen()),
      ];
}
