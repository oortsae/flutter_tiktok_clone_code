import 'package:flutter/material.dart';

import '../../../constants/gaps.dart';
import '../../../constants/sizes.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _usernameController = TextEditingController();
  String _username = "";

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(() {
      setState(() {
        _username = _usernameController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v20,
            const Text(
              "Create username",
              style: TextStyle(
                fontSize: Sizes.size24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v8,
            const Text(
              "You can always change this later",
              style: TextStyle(
                fontSize: Sizes.size16,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gaps.v16,
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Username",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
            Gaps.v16,
            FractionallySizedBox(
              widthFactor: 1,
              child: AnimatedContainer(
                duration: const Duration(
                  milliseconds: 300,
                ),
                padding: const EdgeInsets.symmetric(vertical: Sizes.size16),
                decoration: BoxDecoration(
                  color: _username.isEmpty
                      ? Colors.grey.shade300
                      : Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  "Next",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
