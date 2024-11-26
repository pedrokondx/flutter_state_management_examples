import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management_examples/riverpod/riverpod_counter_notifier.dart';

class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Counter Page'),
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
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () =>
                        ref.read(counterProvider.notifier).decrement(),
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () => ref.read(counterProvider.notifier).reset(),
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () =>
                        ref.read(counterProvider.notifier).increment(),
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
