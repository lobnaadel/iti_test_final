part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}
class Noteloadingstate extends NoteState {}
class Notesuccessstate extends NoteState {}
class Noteemptystate extends NoteState {}
