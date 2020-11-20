import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x_state_demo_1/model/dog.dart';

class CalculatorController extends GetxController {
  var lst = [];
  var totalValue = 0;

  void sumValue(int a, int b) {
    totalValue = a + b;
    update();
  }

  Dog d;

  void addElement(String s) {
    lst.add(s);
    update();
  }

  var strResult = '';
  void showResult() {
    lst.forEach((element) {
      strResult = strResult + element;
    });
    update();
  }

  void printDogName() {
    d.printName();
  }

  void dogInint() {
    d = Dog('kiki');
  }

  void bmiDispose() {
    print('bmi Dispose');
    update();
  }
}
