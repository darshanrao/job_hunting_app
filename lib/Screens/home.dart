import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_hunting_app/Screens/RecruiterComms.dart';
import 'package:job_hunting_app/Screens/SearchRecruiter.dart';
import 'package:job_hunting_app/Screens/Search_Jobs.dart';
import 'package:job_hunting_app/Widgets/home_screen_tile.dart';
import 'package:job_hunting_app/pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';
import '../constants.dart';
import 'AppHis.dart';
import 'Saved_jobs.dart';

class Home extends StatefulWidget {
  static String id = 'Home';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: kDarkPrimaryColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'SETTINGS ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Image.asset('images/Shape.png')
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: kDarkPrimaryColor,
                ),
              ),
              ListTile(
                title: Text('Search Jobs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pushNamed(context, SearchJobs.id);
                },
              ),
              ListTile(
                title: Text('Applied Jobs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pushNamed(context, AppHis.id);
                },
              ),
              ListTile(
                title: Text('Saved Jobs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pushNamed(context, SavedJobs.id);
                },
              ),
              ListTile(
                title: Text('Search Recruiters',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pushNamed(context, SearchRecruiters.id);
                },
              ),
              ListTile(
                title: Text('Recruiter Communication',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pushNamed(context, RecruiterComms.id);
                },
              ),
              ListTile(
                title: Text('Chat for help',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                  color: kDarkPrimaryColor,
                  height: 0.35 * height,
                  width: double.infinity),
              Container(
                  color: Colors.white,
                  height: 0.65 * height,
                  width: double.infinity),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zackky Johnson',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Student at Howard',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Text(
                            'San Francisco',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              '80% Profile Completed',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('images/Ellipse 1.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              'Last Updated Today',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  HomeScreenTile(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 0.0),
                              child: Text('ADD PREFERED JOBS',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: kDarkPrimaryColor,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                  'Add your desired job roles you would prefer to apply for'),
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Container(
                                width: 100,
                                height: 30,
                                child: Center(
                                  child: Text('UPDATE',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                decoration: BoxDecoration(
                                    color: kDarkPrimaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  HomeScreenTile(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text('YOUR PROFILE PERFORMANCES'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '20',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: kSecondaryTextColor),
                                      ),
                                    ),
                                    Text(
                                      'PROFILE VISITS',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: kSecondaryTextColor),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 1,
                                  height: 60,
                                  color: kDarkPrimaryColor,
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '00',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: kSecondaryTextColor),
                                      ),
                                    ),
                                    Text(
                                      'RECRUITER VISITS',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: kSecondaryTextColor),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  HomeScreenTile(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  '02',
                                  style: TextStyle(
                                      fontSize: 30, color: kSecondaryTextColor),
                                ),
                              ),
                              Text(
                                'NEW RECOMMENDED JOBS',
                                style: TextStyle(
                                    fontSize: 16, color: kSecondaryTextColor),
                              )
                            ],
                          ),
                          Text('Software Programmer Trainee - only Female'),
                          Divider(
                            color: kDarkPrimaryColor,
                            thickness: 2,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  '00',
                                  style: TextStyle(
                                      fontSize: 30, color: kSecondaryTextColor),
                                ),
                              ),
                              Text(
                                'SAVED JOBS',
                                style: TextStyle(
                                    fontSize: 16, color: kSecondaryTextColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
