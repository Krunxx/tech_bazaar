import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:my_ecommerce/controller/dashboard_controller.dart';


class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DashboardController());

  }
}