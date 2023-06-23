import 'package:flutter/material.dart';
import 'package:video_conf/Pages/homepage.dart';

class NewMeeting extends StatefulWidget {
  const NewMeeting({super.key});

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {
  // TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Icon(
                  Icons.chevron_left,
                  size: 34,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776392-8ef4de2d-2fd8-4b5a-b98b-ea343b19c03e.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Your Meeting is ready",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Card(
                color: Colors.grey[300],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: const ListTile(
                  leading: Icon(Icons.link),
                  title: SelectableText(
                    "asddsadsa",
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Icon(Icons.copy),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
              height: 40,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down_sharp),
              label: const Text("Share Invite"),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.video_call),
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    fixedSize: const Size(350, 30),
                    side: const BorderSide(color: Colors.indigo),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                label: const Text("StartCall"))
          ],
        ),
      ),
    );
  }
}
