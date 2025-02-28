import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  // 부모에게서 받을거 미리 저장
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });
  // 사용할 타입 미리 정해놓기 - Stateless -> final 타입 미리 지정가능
  final String taskName;
  final bool taskCompleted;
  Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            // check Box
            Checkbox(value: taskCompleted, onChanged: onChanged),
            // Task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
