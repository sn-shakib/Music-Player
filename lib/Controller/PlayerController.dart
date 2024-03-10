import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
class PlayeController extends GetxController{

  final audioQuuery= OnAudioQuery();
 final audioPlayer=AudioPlayer();

  @override
  void onInit() {

    super.onInit();
    checkPermision();
  }
 player(String?uri){
  try{
    audioPlayer.setAudioSource(
        AudioSource.uri(Uri.parse(uri!))
    );
    audioPlayer.play();
  } on Exception catch(e){
    print(e.toString());
  }
 }

 checkPermision()async{
    var  permi= await Permission.storage.request();
    if (permi.isGranted){}
    else {
      checkPermision();
    }

 }
}