import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/widgetoftheweek/model/model.dart';
import 'package:flutter_libraries/widgetoftheweek/view_model/repo/view_repo.dart';

class ViewModel extends GetxController {
  final _viewrepo = Get.put(ViewRepository());
  final RxList<PostModel> _postModelList = <PostModel>[].obs;
  List<PostModel> get postModelList => _postModelList.toList();

  Future getModelData() async {
    final response = await _viewrepo.getPostData();
    if (response != null) {
      _postModelList.assignAll(response);
    }
  }
}
