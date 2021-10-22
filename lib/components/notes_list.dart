import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/models/note.dart';
import 'package:flutter_desktop_notes/constants.dart';
import 'package:flutter_desktop_notes/widgets/note_card.dart';

class NotesList extends StatelessWidget {
  final String headline;
  final List<Note> notes;

  const NotesList({
    Key? key,
    required this.headline,
    required this.notes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    final bool _isSm = _size.width <= screenSm;
    final bool _isLg = _size.width <= screenLg;

    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline.toUpperCase(),
            style: const TextStyle(
              color: darkColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: notes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _isSm ? 1 : (_isLg ? 2 : 3),
              childAspectRatio: 1.63,
            ),
            itemBuilder: (context, index) => NoteCard(
              note: notes[index],
            ),
          ),
        ],
      ),
    );
  }
}
