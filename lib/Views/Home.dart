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
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.1),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
        ],
        leading: const Icon(Icons.sort_rounded),
        title: const CustomText(color: Colors.redAccent, text: "Beats", fontWeight: FontWeight.w700, fontsize: 18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 20,
            itemBuilder: (BuildContext context, int indext){
             return Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),
               ),
               child: const ListTile(
                      title: CustomText(color: Colors.black, text: "Music Name",
                          fontWeight: FontWeight.w700, fontsize: 15),
                 subtitle: CustomText(color: Colors.black, text: "Artist Name",
                     fontWeight: FontWeight.w700, fontsize: 12),
                 leading: Icon(Icons.music_note,size: 32,),
               ),
             );
        }
        ),
      ),
    );
  }
}
