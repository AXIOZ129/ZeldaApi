import 'package:examen/src/models/zelda_model.dart';
import 'package:examen/src/providers/zelda_prov.dart';
import 'package:get/get.dart';

class ZeldaState extends GetxController {
  List<ZeldaModel> objets = [];
  final zeldaProv = ZeldaProv();

  Future<void> obtainobjet() async {
    objets.addAll(await zeldaProv.zelda());
    update();
  }
}
