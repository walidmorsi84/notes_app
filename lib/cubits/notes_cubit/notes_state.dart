import 'package:notes_app/models/note_model.dart';

abstract class NotesState {}

class NotesInitialState extends NotesState {}

class NotesLoadingState extends NotesState {}

class NotesSuccessState extends NotesState {
  final List<NoteModel> notes;

  NotesSuccessState(this.notes);
}

class NotesFailureState extends NotesState {
  final String errMessage;

  NotesFailureState(this.errMessage);
}
