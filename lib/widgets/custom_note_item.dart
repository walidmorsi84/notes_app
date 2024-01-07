import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

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
            color: const Color(0xffffcd7b),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Build your career with Tharwat Samy',
                    style: TextStyle(color: Color(0xff8d632c), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  style: const ButtonStyle(
                    tapTargetSize:
                        MaterialTapTargetSize.shrinkWrap, // the '2023' part
                  ),
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              const Text(
                'Jan 6, 2023',
                style: TextStyle(color: Color(0xff8d632c), fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
