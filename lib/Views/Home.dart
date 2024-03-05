import 'package:flutter/material.dart';
import 'package:music_player_application/CustomWidget/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 49, 47, 47),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        leading: const Icon(
          Icons.sort_rounded,
          color: Colors.white,
        ),
        title: const CustomText(
            color: Colors.redAccent,
            text: "Beats",
            fontWeight: FontWeight.w700,
            fontsize: 18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 20,
            itemBuilder: (BuildContext context, int indext) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(137, 23, 23, 23),
                ),
                margin: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  title: const CustomText(
                      color: Colors.white,
                      text: "Music Name",
                      fontWeight: FontWeight.w700,
                      fontsize: 15),
                  subtitle: const CustomText(
                      color: Colors.white,
                      text: "Artist Name",
                      fontWeight: FontWeight.w700,
                      fontsize: 12),
                  leading: const Icon(
                    Icons.music_note,
                    size: 32,
                    color: Colors.white,
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                        size: 30,
                        color: Colors.white,
                      )),
                ),
              );
            }),
      ),
    );
  }
}
