import 'package:NotesApp/wedgets/StaggeredGrid_View.dart';
import 'package:NotesApp/wedgets/costum_app_bar.dart';
import 'package:NotesApp/wedgets/costum_searsh_icon.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          CostumSearshIcon(),
          SizedBox(
            height: 10,
          ),
          StaggeredgridView(),
        ],
      ),
    );
  }
}
