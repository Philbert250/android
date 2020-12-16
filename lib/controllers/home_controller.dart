import 'package:get/get.dart';
import 'package:vonline/models/home_models.dart';

class HomeController extends GetxController {
  var countme = 0.obs;
  increment() => countme++;
  var sectors = List<Sectors>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchSector();
  }

  void fetchSector() async {
    await Future.delayed(Duration(seconds: 4));
    var response = [
      Sectors(
          id: 122,
          sectorName: 'gikondo',
          sectorLeader: 'philz',
          district: 'kicukiro'),
      Sectors(
          id: 122,
          sectorName: 'gikondo',
          sectorLeader: 'philz',
          district: 'kicukiro'),
      Sectors(
          id: 122,
          sectorName: 'gikondo',
          sectorLeader: 'philz',
          district: 'kicukiro'),
    ];
    sectors.assignAll(response);
  }
}
