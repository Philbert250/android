import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/get.dart';
import 'package:vonline/views/splash_view.dart';

class SplashController extends GetxController {
  var splash = true.obs;

  @override
  void onInit() {
    super.onInit();
    splashState();
  }

  void splashState() async {
    await Future.delayed(Duration(seconds: 20), () {
      splash.value = false;
    });
  }
}
