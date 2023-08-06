import 'package:bank_project/infra/infra.dart';
import 'package:flutter/cupertino.dart';

class UserInterfaceContainer extends StatefulWidget {
  const UserInterfaceContainer({super.key});

  @override
  State<UserInterfaceContainer> createState() => _UserInterfaceContainerState();
}

class _UserInterfaceContainerState extends State<UserInterfaceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: const BoxDecoration(
        gradient: DefaultColors.dashboardColor
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 68.0, left: 36),
        child: Row(
          children: [
            Column(
              children: [
                RichText(text: TextSpan(
                  text: 'Welcome back,\n',
                  children: [
                    TextSpan(
                      text: 'USER'
                    ),
                  ]
                )),
              ],
            ),
            //Add icon user
          ],
        ),
      ),
    );
  }
}
