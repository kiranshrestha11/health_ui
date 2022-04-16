import 'package:flutter/material.dart';
import 'package:health_ui/constants.dart';

class NeedHelpText extends StatelessWidget {
  const NeedHelpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Needed help with Doctor and Info?",
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.phone_callback,
              color: redColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Call us Now",
              style: TextStyle(
                  color: redColor,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
