import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_examples/getx/getx_counter_controller.dart';

class GetXCounterPage extends StatelessWidget {
  GetXCounterPage({super.key});

  final GetxCounterController controller = Get.put(GetxCounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Counter Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              Obx(() => Text(
                    '${controller.counter}',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: controller.decrement,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: controller.reset,
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: controller.increment,
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
