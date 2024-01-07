import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_view_body.dart';

class EditMoteView extends StatelessWidget {
  const EditMoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
