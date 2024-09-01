import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/cubit/characters_list/characters_list_cubit.dart';

import 'core/theme/theme.dart';
import 'core/theme/util.dart';
import 'injection_container.dart';
import 'router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();

  runApp(MainApp(
    appRouter: locator<AppRouter>(),
  ));
}

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, 'Roboto', 'Montserrat');
    MaterialTheme theme = MaterialTheme(textTheme);

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => locator<CharactersListCubit>())],
      child: MaterialApp.router(
        // scrollBehavior: const MaterialScrollBehavior().copyWith(
        //   dragDevices: {PointerDeviceKind.mouse},
        // ),
        routerConfig: appRouter.config(),
        title: 'Пустышка - Рик и Морти api',
        theme: brightness == Brightness.light
            ? ThemeData(
                colorScheme: theme.lightMediumContrast().colorScheme,
                useMaterial3: true)
            : ThemeData(
                colorScheme: theme.darkMediumContrast().colorScheme,
                useMaterial3: true),
      ),
    );
  }
}
