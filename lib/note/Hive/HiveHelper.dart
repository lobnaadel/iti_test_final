
import 'package:hive/hive.dart';

import 'package:hive_flutter/adapters.dart';

import 'boxes.dart';

class HiveHelper{

  static List<String> notes=[];


  static Future getNotes() async {
    await Future.delayed(Duration(seconds: 3)).then((value) {
      notes = Hive.box(notebox).get(notebox);
      // refresh();
    });
  }
  static void addNote(String title) async
{
   notes.add(title);
  await Hive.box(notebox).put(notebox,notes);

}
  static void removeNote(int index) async
  {
    notes.removeAt(index);
    await Hive.box(notebox).put(notebox,notes);

  }

  static void clearallnotes() async
  {
    notes.clear();
    await Hive.box(notebox).clear();

  }
  static void updatenote(String newtitle,int index) async{

    notes[index]=newtitle;
    await Hive.box(notebox).put(notebox, notebox);

  }

}