import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_state_demo_1/controller/calculator_controller.dart';

class HomePage extends StatelessWidget {
  final CalculatorController cl = Get.put(CalculatorController());
  final TextEditingController tc = TextEditingController();
  final TextEditingController tc1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('test getx state'),
        ),
        body: GetBuilder<CalculatorController>(
          initState: (_) => cl.dogInint(),
          dispose: (_) => cl.bmiDispose(),
          builder: (calculatorController) {
            return Container(
              child: Column(
                children: [
                  TextField(
                    controller: tc,
                    decoration: InputDecoration(labelText: "Enter your number"),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: tc1,
                    decoration: InputDecoration(labelText: "Enter your number"),
                    keyboardType: TextInputType.number,
                  ),
                  RaisedButton(
                    child: Text('Sum'),
                    onPressed: () => calculatorController.sumValue(
                        int.parse(tc.text), int.parse(tc1.text)),
                  ),
                  RaisedButton(
                    child: Text(calculatorController.totalValue.toString()),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text(calculatorController.d.name),
                    onPressed: () => calculatorController.printDogName(),
                  ),
                  RaisedButton(
                    child: Text('1'),
                    onPressed: () => calculatorController.addElement('1'),
                  ),
                  RaisedButton(
                    child: Text('result'),
                    onPressed: () => calculatorController.showResult(),
                  ),
                  RaisedButton(
                    child: Text(calculatorController.strResult),
                    onPressed: () {},
                  ),
                ],
              ),
            );
          },
        ));
  }
}
