import 'package:flutter/material.dart';
import 'package:video_conf/utilities/joinwithcode.dart';
import 'package:video_conf/utilities/newmeeting.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NewMeeting(),
                    ));
              },
              icon: const Icon(Icons.add),
              label: const Text("New Meeting"),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 30),
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const Divider(
            thickness: 1,
            height: 40,
            indent: 40,
            endIndent: 40,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const JoinWithCode(),
                    ));
              },
              icon: const Icon(Icons.calendar_month_outlined),
              label: const Text("Join with a code"),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 30),
                  side: const BorderSide(color: Colors.indigo),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.network(
              "https://user-images.githubusercontent.com/67534990/127524449-fa11a8eb-473a-4443-962a-07a3e41c71c0.png")
        ],
      ),
    );
  }
}
