import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart' as provider;
import 'package:state_management_examples/bloc/counter_bloc.dart';
import 'package:state_management_examples/bloc/bloc_counter_page.dart';
import 'package:state_management_examples/getx/getx_counter_page.dart';
import 'package:state_management_examples/home_page.dart';
import 'package:state_management_examples/mobx/mobx_counter_page.dart';
import 'package:state_management_examples/provider/counter_provider.dart';
import 'package:state_management_examples/provider/provider_counter_page.dart';
import 'package:state_management_examples/riverpod/riverpod_counter_page.dart';
import 'package:state_management_examples/set_state/set_state_counter_page.dart';
import 'package:state_management_examples/value_notifier.dart/value_notifier_counter_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: provider.ChangeNotifierProvider(
        create: (context) =>
            CounterProvider(), // Provide the provider class to the widget tree
        child: BlocProvider(
          // Wrap the GetMaterialApp with BlocProvider to use BLoC
          create: (context) => CounterBloc(),
          child: GetMaterialApp(
            // Replace MaterialApp with GetMaterialApp to use GETX
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const HomePage(),
              '/setStateCounter': (context) => const SetStateCounterPage(),
              '/blocCounter': (context) => const BlocCounterPage(),
              '/getXCounter': (context) => GetXCounterPage(),
              '/mobXCounter': (context) => MobXCounterPage(),
              '/providerCounter': (context) => const ProviderCounterPage(),
              '/riverpodCounter': (context) => const RiverpodCounterPage(),
              '/valueNotifierCounter': (context) =>
                  const ValueNotifierCounterPage(),
            },
          ),
        ),
      ),
    );
  }
}
