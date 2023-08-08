import 'package:bank_project/infra/infra.dart';
import 'package:flutter/cupertino.dart';

class UserInterfaceContainer extends StatefulWidget {
  final String name;

  const UserInterfaceContainer({
    super.key,
    required this.name,
  });

  @override
  State<UserInterfaceContainer> createState() => _UserInterfaceContainerState();
}

class _UserInterfaceContainerState extends State<UserInterfaceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: const BoxDecoration(gradient: DefaultColors.dashboardColor),
      child: Padding(
        padding: const EdgeInsets.only(top: 68.0, left: 36),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Welcome back,\n',
                        style: Fonts.h3W400,
                        children: [
                          TextSpan(
                            text: widget.name,
                            style: Fonts.h4W700,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            //Add icon user
          ],
        ),
      ),
    );
  }
}
