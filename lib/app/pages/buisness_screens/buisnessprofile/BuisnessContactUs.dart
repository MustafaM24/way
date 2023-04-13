import 'package:flutter/material.dart';
import 'package:way/app/common/buttons/primary_button.dart';
import 'package:way/style/colors.dart';

class BuisnessContactUsPage extends StatelessWidget {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        // title: Text('Contact Us', style: TextStyle(color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Contact Us',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'How can we assist....Please allow up to 24 hours for a response via registered email.',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 32),
            // full screen button
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: TextFormField(
                  controller: _messageController,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration.collapsed(
                    hintText: 'Type message here',
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            PrimaryButton(
              vertPadding: 20,
              horizPadding: 60,
              title: 'Send',
              onTap: () {
                // TODO: Implement send functionality
              },
              color: CustomColors.primaryBlue,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ],
        ),
      ),
    );
  }
}
