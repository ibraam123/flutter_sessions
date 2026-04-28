import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session_7_flutter_hult/revision/views/home_view.dart';
import 'package:session_7_flutter_hult/session_13_firebase/cubits/auth_cubit.dart';
import 'package:session_7_flutter_hult/session_13_firebase/screens/home_screen.dart';
import 'package:session_7_flutter_hult/session_13_firebase/screens/login_screen.dart';








void main() {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();
  








  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide services and cubits to the entire app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePostsScreen(),
    );
  }
}















// This widget decides whether to show the Login screen or the Home screen
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return const HomeScreen();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
