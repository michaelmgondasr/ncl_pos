import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncl_pos/auth/welcome_screen.dart';
import 'package:ncl_pos/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:ncl_pos/home/home_screen.dart';
import 'blocs/sign_in_bloc/sign_in_bloc.dart';
import 'screens/profile_screen.dart';
import 'screens/transaction_records_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCL POS',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          surface: Color.fromRGBO(235, 244, 246, 1),
          onSurface: Colors.black,
          primary: Color.fromRGBO(92, 122, 221, 1),
          onPrimary: Colors.black,
          secondary: Color.fromRGBO(8, 131, 149, 1),
          onSecondary: Color.fromRGBO(235, 244, 246, 1),
          tertiary: Color.fromRGBO(55, 183, 195, 1),
          error: Colors.red,
          outline: Color(0xFF424242),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (context, state) {
                if (state.status == AuthenticationStatus.authenticated) {
                  return BlocProvider(
                    create: (context) => SignInBloc(
                      userRepository: context.read<AuthenticationBloc>().userRepository,
                    ),
                    child: const HomeScreen(),
                  );
                } else {
                  return const WelcomeScreen();
                }
              },
            ),
        '/records': (context) => const TransactionRecords(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
