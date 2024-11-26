import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_examples/bloc/counter_bloc.dart';
import 'package:state_management_examples/bloc/counter_events.dart';
import 'package:state_management_examples/bloc/bloc_counter_state.dart';

class BlocCounterPage extends StatelessWidget {
  const BlocCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter Page'),
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
              BlocBuilder<CounterBloc, BlocCounterState>(
                builder: (context, state) {
                  return Text(
                    '${state.counter}',
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
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounter());
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(ResetCounter());
                    },
                    tooltip: 'Reset',
                    child: const Icon(Icons.refresh),
                  ),
                  const SizedBox(width: 16),
                  FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounter());
                    },
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
