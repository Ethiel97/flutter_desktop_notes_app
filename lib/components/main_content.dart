import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/components/notes_list.dart';
import 'package:flutter_desktop_notes/constants.dart';
import 'package:flutter_desktop_notes/models/note.dart';

List<Note> pinnedNotes = [
  Note(
    "Focus Time 🎧",
    '''Hi guys, I would like to suggest that we 
set a fixed focus time within the company, where you can set a fixed focus time within the company, where you can
''',
    "Chris Kruger",
    "54.jpg",
    "8/22/2020 . 4:43 pm",
  ),
  Note(
    "Coffee machine Instructions ☕️",
    '''I wanted to point out to you that in the future please make sure to keep the doors
wanted to point out to you that closed''',
    "Laura Schellen",
    "31.jpg",
    "8/24/2020 . 4:09 pm",
  ),
  Note(
    "Dog in the office 🐶",
    '''Next week I will bring my dog Barker to the office.
I've packed some treats wanted to point out to you that in case you want to make friends''',
    "Julian Herbat",
    "98.jpg",
    "8/22/2020 . 4:43 pm",
  ),
];

List<Note> allNotes = [
  Note(
    "Please close the doors 🚪",
    '''I wanted to point out to you that in 
the future please make sure to keep the doors 
wanted to point out to you that all bout 
closed''',
    "Laura Schellen",
    "31.jpg",
    "8/24/2020 . 4:09 pm",
  ),
  Note(
    "Focus Time 🎧",
    '''Hi guys, I would like to suggest that 
we set a fixed focus time within the company, wanted to point out to you that and refer it to 
where you can''',
    "Chris Kruger",
    "54.jpg",
    "8/22/2020 . 4:43 pm",
  ),
  Note(
    "QA Testing Devices",
    '''Next week I will bring my dog Barker to the office.
I've packed some treats wanted to point out to you that in case you want to make friends''',
    "Julian Herbat",
    "98.jpg",
    "8/22/2020 . 4:43 pm",
  ),
  Note(
    "Please register your machine",
    '''Next week I will bring my dog Barker to the office. 
I've packed some treats wanted to point out to you that to me wanted to point out to you that  and point out how to in case you want to make friends''',
    "Diana Helena",
    "31.jpg",
    "8/22/2020 . 4:43 pm",
  ),
  Note(
    "Apple Event Watching",
    '''Next week I will bring my dog Barker 
to the office. I've packed some treats in case you want wanted to point out to you that displace and disgrace to me
to make friends''',
    "Max Schmidt",
    "me.jpg",
    "8/22/2020 . 4:43 pm",
  ),
  Note(
    "Coffee machine instructions ☕️",
    '''Next week I will bring my dog Barker 
to the office. I've packed some treats in wanted to point out to you that hello to use
case you want to make friends''',
    "Julian Herbat",
    "11.jpg",
    "8/22/2020 . 4:43 pm",
  ),
];

class MainContent extends StatelessWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          NotesList(
            headline: 'Pinned public notes',
            notes: pinnedNotes,
          ),
          NotesList(
            headline: 'all public notes',
            notes: allNotes,
          ),
        ],
      );
}
