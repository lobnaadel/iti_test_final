import 'package:bloc/bloc.dart';
import 'package:iti_test1/note/Hive/HiveHelper.dart';
import 'package:meta/meta.dart';
part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  void getmynote()async{
    emit(Noteloadingstate());
    await HiveHelper.getNotes();
    if(HiveHelper.notes.isEmpty)
      {
        emit(Noteemptystate());
      }
    else{
      emit(Notesuccessstate());
    }
  }
  void clearmynote()
  {
    HiveHelper.clearallnotes();
    emit(Noteemptystate());
  }
  void removemynote(int index)
  {
    HiveHelper.removeNote(index);
    if(HiveHelper.notes.isEmpty)
    {
      emit(Noteemptystate());
    }
    else{
      emit(Notesuccessstate());
    }
  }

  void updateNote(String newtitle,int index)
  {
    HiveHelper.updatenote(newtitle, index);
    emit(Notesuccessstate());
  }

  void addNote(String title)
  {
    HiveHelper.addNote(title);
    emit(Notesuccessstate());
  }

}
