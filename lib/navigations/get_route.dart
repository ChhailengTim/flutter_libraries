import 'package:flutter_libraries/classA/view/viewa.dart';
import 'package:flutter_libraries/navigations/navigations.dart';
import 'package:get/get.dart';

class GetRoutes extends RouteName {
  List<GetPage> get routes => [
        GetPage(
            name: absorbpointerscreen, page: () => const AbsorbPointerScreen()),
        GetPage(name: accumulatorscreen, page: () => const AccumulatorScreen()),
        GetPage(
            name: alignmentDirectionalScreen,
            page: () => const AlignmentDirectionalScreen()),
      ];
}
