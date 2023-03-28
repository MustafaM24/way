import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'About Us',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32.0, 0, 16.0, 16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer dapibus tellus vel tempor pharetra. Donec interdum nulla vel justo laoreet bibendum. Integer finibus lacinia felis, vitae aliquam felis venenatis vel. Sed a erat quis turpis tristique efficitur. In volutpat ligula risus, quis viverra nulla lobortis a. Integer id arcu et eros pulvinar porttitor. Maecenas ultricies, augue nec efficitur mattis, lectus magna consectetur metus, eu tincidunt libero dolor eget sapien. Fusce bibendum, nulla eget aliquam tincidunt, arcu nisl interdum justo, non fringilla tellus elit ut odio. Nam eget hendrerit est, sed auctor orci. Suspendisse scelerisque nulla libero, sit amet dignissim felis faucibus in. Nullam sem nisl, faucibus auctor efficitur ac, pulvinar euismod odio.',
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Contact & Business Hours',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text(
                  '090674667764',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email),
                SizedBox(width: 8),
                Text(
                  'freaky@gmail.com',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Business Hours:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday\n'
                        'Tuesday\n'
                        'Wednesday\n'
                        'Thursday\n'
                        'Friday\n'
                        'Saturday\n'
                        'Sunday',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '10am-8pm\n'
                        '10am-8pm\n'
                        '10am-8pm\n'
                        '10am-8pm\n'
                        '10am-8pm\n'
                        '10am-8pm\n'
                        'Closed',
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Share'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
