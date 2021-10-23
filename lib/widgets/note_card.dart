import 'package:flutter/material.dart';
import 'package:flutter_desktop_notes/models/note.dart';
import '../constants.dart';

class NoteCard extends StatefulWidget {
  const NoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  final Note note;

  @override
  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {
  bool entered = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
        onEnter: (event) {
          setState(() {
            entered = true;
          });
        },
        onExit: (event) {
          setState(() {
            entered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          transform: entered ? (Matrix4.identity()..scale(1.025)) : null,
          margin: const EdgeInsets.only(
            top: 12,
            right: 14,
            bottom: 12,
          ),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  color: darkColor.withOpacity(.03),
                  blurRadius: 8),
              BoxShadow(
                offset: const Offset(0, 2),
                color: darkColor.withOpacity(.03),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox(
                      width: 38,
                      height: 38,
                      child: Image.asset(
                        'assets/images/${widget.note.userAvatar}',
                        fit: BoxFit.cover,
                        color: darkColor.withOpacity(.3),
                        colorBlendMode: BlendMode.srcOver,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.note.username,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: darkColor,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.note.postedAt,
                        style: const TextStyle(
                          color: textColor,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                  if (entered) ...[
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        color: darkColor,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                widget.note.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  color: darkColor,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                child: Text(
                  widget.note.content,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: textColor,
                    fontSize: 14,
                  ),
                  softWrap: true,
                  maxLines: 5,
                ),
              ),
            ],
          ),
        ),
      );
}
