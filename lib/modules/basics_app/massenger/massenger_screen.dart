import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),

            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),

          ],
        ),
        titleSpacing: 20.0,
        actions: [
          IconButton(onPressed: () {}, icon:
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              size: 18.0,
              color: Colors.white,
            ),
          ),),
          IconButton(onPressed: (){}, icon:
          CircleAvatar(
            radius: 15.0,
             backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 18.0,
            ),
          ),),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:BoxDecoration(
             borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30.0,

                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'search',
                    style: TextStyle(
                      fontSize: 18.0
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Container(
                    width: 65.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'mohamed mahmoud',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 65.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'mohamed mahmoud',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 65.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'mohamed mahmoud',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 65.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'mohamed mahmoud',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    width: 65.0,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'mohamed mahmoud',
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                  '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage('https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274243731_4844920788909196_6308180863274666193_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFe15ldakTwmY1WCDfnfp1lK-vVkEeCHU8r69WQR4IdT1tFMmoChZyrRr1NebhKfgq_3aDnu1A1zpjqCHFWDGlU&_nc_ohc=WNHVFRloJJ8AX85V2FD&_nc_ht=scontent.fcai19-1.fna&oh=00_AT8BzRXCOJkyK3Qan_TG2bk6w2CTLy8Q0Srxpvv9iaH6UQ&oe=62481785'),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '7amokcha',
                            ),
                            Row(
                              children: [
                                Text(
                                  'انت فين يا حموكشه',
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 6.0,
                                    width: 6.0,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                ),
                                Text(
                                    '02.00 pm'
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
