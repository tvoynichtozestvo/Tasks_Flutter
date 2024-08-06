import 'package:flutter/material.dart';
import 'package:to_do/resources/colors.dart';

class TodoItem extends StatefulWidget{
  final String taskName;
  final bool taskComleted;
  Function(bool?)? onChanged;

  TodoItem({
    super.key,
    required this.taskName,
    required this.taskComleted,
    required this.onChanged
  });

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    backgroundColor ??= Theme.of(context).colorScheme.primary;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
      child: InkWell(
        onTap: () {
          setState(() {
            backgroundColor =
            backgroundColor == Theme.of(context).colorScheme.primary
                ? Theme.of(context).colorScheme.tertiary
                : Theme.of(context).colorScheme.primary;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Row(
            children: [
              Transform.scale(
                scale: 1.4,
                child: Checkbox(
                  value: widget.taskComleted,
                  onChanged: widget.onChanged,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  checkColor: AppColors.secondaryVariant,
                  activeColor: AppColors.secondaryVariant,

                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  widget.taskName,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
