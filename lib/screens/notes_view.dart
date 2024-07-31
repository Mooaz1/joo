import 'package:NotesApp/wedgets/Add_Note_Botom_Sheet.dart';
import 'package:NotesApp/wedgets/costum_app_bar.dart';
import 'package:NotesApp/wedgets/notes_view_body.dart';
import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CostumAppBar(),
        preferredSize: Size.fromHeight(150),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFFFE6902),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBotomSheet();
              });
        },
        label: const Text('Add Note'),
        icon: const Icon(Icons.create),
      ),
      body: const NotesViewBody(),
    );
  }
}
