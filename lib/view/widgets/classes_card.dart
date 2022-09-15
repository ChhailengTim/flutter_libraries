import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class ClassesCard extends StatelessWidget {
  const ClassesCard({
    Key? key,
    this.onTap,
    this.title,
  }) : super(key: key);
  final GestureTapCallback? onTap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(AppSize.a5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSize.a10),
            child: Row(
              children: [
                Text(
                  title ?? 'null',
                  style: const TextStyle(
                    fontSize: AppSize.a16,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
