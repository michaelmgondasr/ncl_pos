import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ncl_pos/app.dart';
import 'package:ncl_pos/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(FirebaseUserRepo()));
}
