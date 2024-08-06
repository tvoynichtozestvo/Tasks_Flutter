import 'package:flutter/material.dart';
import 'package:to_do/resources/colors.dart';

class ModalAdd extends StatelessWidget {
  final Function(String) onAddTask;

  const ModalAdd({super.key, required this.onAddTask});

  @override
  Widget build(BuildContext context) {
    String newTaskName = '';

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Task Name',
                labelStyle: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondary),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.secondary),
                ),
              ),
              style: TextStyle(
                fontSize: 22,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onChanged: (value) {
                newTaskName = value;
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Закрыть модальное окно
                  },
                  child: Text(
                    'Cancel',
                    style: Theme.of(context).textTheme.labelLarge,

                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                  ),
                  onPressed: () {
                    if (newTaskName.isNotEmpty) {
                      onAddTask(newTaskName);
                      Navigator.of(context).pop(); // Закрыть модальное окно
                    }
                  },
                  child: const Text(
                    'Add Task',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textDark
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
