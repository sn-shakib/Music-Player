import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
class PlayeController extends GetxController{

  final audioQuuery= new OnAudioQuery();

  @override
  void onInit() {

    super.onInit();
    checkPermision();
  }
 checkPermision()async{
    var  permi= await Permission.storage.request();
    if (permi.isGranted){}
    else {
      checkPermision();
    }

 }
}