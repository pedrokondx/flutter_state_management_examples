import 'package:flutter/material.dart';
import 'package:state_management_examples/value_notifier.dart/value_notifier_controller.dart';

class ValueNotifierCounterPage extends StatefulWidget {
  const ValueNotifierCounterPage({super.key});

  @override
  State<ValueNotifierCounterPage> createState() =>
      _ValueNotifierCounterPageState();
}

class _ValueNotifierCounterPageState extends State<ValueNotifierCounterPage> {
  final ValueNotifierController _controller = ValueNotifierController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueNotifier Counter Page'),
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
              ValueListenableBuilder(
                  valueListenable: _controller,
                  builder: (context, state, child) {
                    return Text(
                      '${state.counter}',
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                              ),
                    );
                  }),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: _controller.decrement,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: _controller.reset,
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: _controller.increment,
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
