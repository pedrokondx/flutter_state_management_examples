import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

class ProviderCounterPage extends StatelessWidget {
  const ProviderCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Counter Page'),
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
              Consumer<CounterProvider>(
                builder: (context, counterProvider, child) {
                  return Text(
                    '${counterProvider.counter}',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                  );
                },
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () =>
                        context.read<CounterProvider>().decrement(),
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () => context.read<CounterProvider>().reset(),
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () =>
                        context.read<CounterProvider>().increment(),
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
