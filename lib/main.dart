import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
=======
import 'package:noteng/Widgets/app_bar_widget.dart';
import 'package:noteng/Widgets/button_widget.dart';
import 'package:noteng/Widgets/dropdown_widget.dart';
>>>>>>> a3c357c (add new post)
import 'package:noteng/Widgets/notesListWidget.dart';
import 'package:noteng/Widgets/textFieldWidget.dart';
import 'package:noteng/Widgets/upload_widget.dart';
import 'package:noteng/pages/add_new_post.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NOTENG',
<<<<<<< HEAD
      // theme: ThemeData(
      //   fontFamily: 'Poppins',
      //   colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      //   useMaterial3: true,
      // ),
      home: Trial(),
=======
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: AddNewPostPage(),
>>>>>>> a3c357c (add new post)
      debugShowCheckedModeBanner: false,
    );
  }
}

class Trial extends StatefulWidget {
  const Trial({Key? key});

  @override
  State<Trial> createState() => _TrialState();
}

class _TrialState extends State<Trial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            5,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: NotesListWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
