import 'package:flutter/material.dart';
import 'package:job_hunting_app/Screens/Key_Skills.dart';
import 'package:job_hunting_app/Screens/RecruiterComms.dart';
import 'package:job_hunting_app/Screens/Saved_jobs.dart';
import 'package:job_hunting_app/Screens/SearchRecruiter.dart';
import 'package:job_hunting_app/Screens/Search_Jobs.dart';
import 'package:job_hunting_app/Screens/WelcomeScreen.dart';
import 'package:job_hunting_app/Screens/WorkPref.dart';
import 'package:job_hunting_app/Screens/home.dart';
import 'Screens/AppHis.dart';
import 'Screens/RegistrationScreen.dart';
import 'Screens/Fabricate.dart';
import 'Screens/Education.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Product Regular'),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        Fabricate.id: (context) => Fabricate(),
        Education.id: (context) => Education(),
        KeySkills.id: (context) => KeySkills(),
        Work.id: (context) => Work(),
        Home.id: (context) => Home(),
        SearchJobs.id: (context) => SearchJobs(),
        SavedJobs.id: (context) => SavedJobs(),
        AppHis.id: (context) => AppHis(),
        SearchRecruiters.id: (context) => SearchRecruiters(),
        RecruiterComms.id: (context) => RecruiterComms(),
      },
    );
  }
}
