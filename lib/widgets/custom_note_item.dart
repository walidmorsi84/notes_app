import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditMoteView();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    note.subTitle,
                    style:
                        const TextStyle(color: Color(0xff8d632c), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  style: const ButtonStyle(
                    tapTargetSize:
                        MaterialTapTargetSize.shrinkWrap, // the '2023' part
                  ),
                  onPressed: () {
                    note.delete();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Text(
                note.date,
                style: const TextStyle(color: Color(0xff8d632c), fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
