import 'package:flutter/material.dart';
import 'package:music_player_application/CustomWidget/text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../Controller/PlayerController.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller=Get.put(PlayeController());
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
      body:FutureBuilder<List<SongModel>>(
          future: controller.audioQuuery.querySongs(
            ignoreCase: true,
            orderType: OrderType.ASC_OR_SMALLER,
            sortType: null,
            uriType: UriType.EXTERNAL,
          ),
          builder: (BuildContext context,snapshot){
            if (snapshot.data == null){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else if (snapshot.data!.isEmpty){
              return const Center(
                child: Text('No song Found'),
              );
            }
            else {
              print(snapshot.data);
              return  Padding(
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
                          title:  CustomText(
                              color: Colors.white,
                              text: "${snapshot.data![indext].displayNameWOExt}",
                              fontWeight: FontWeight.w700,
                              fontsize: 15),
                          subtitle:  CustomText(
                              color: Colors.white,
                              text: "${snapshot.data![indext].artist}",
                              fontWeight: FontWeight.w700,
                              fontsize: 12),
                          leading: const Icon(
                            Icons.music_note,
                            size: 32,
                            color: Colors.white,
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                final player=AudioCache();
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                      );
                    }),
              );
            }

          }
          )
    );
  }
}
