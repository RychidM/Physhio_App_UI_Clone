import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:physio_app/misc/colors.dart';
import 'package:physio_app/widgets/large_text.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: LargeText(text: "Inbox", size: 50, color: AppColors.primaryColor,))
    );
  }
}
