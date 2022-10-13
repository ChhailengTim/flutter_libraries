import 'package:flutter_libraries/class_a/view/action_listener.dart';
import 'package:flutter_libraries/class_a/view/actions.dart';
import 'package:flutter_libraries/class_a/view/viewa.dart';
import 'package:flutter_libraries/navigations/navigations.dart';
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
      ];
}
