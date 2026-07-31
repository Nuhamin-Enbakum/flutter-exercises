import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ProfileCard()
          ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.lightBlue, Colors.blue, Colors.indigo]
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                  ),
                ),
                ),
                Positioned(
                  bottom: -40,
                  left: 20,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/First.jpg'),
                    ),
                    
                        
                       ),
                       Positioned(
                      top: 10,
                      right: 10,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.edit

                        ),
                      ),
                ),
            ]
          ),

          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Benjamin Lewis',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),

            ),
              
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Product Designer | Senior User Experience Designer',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold
                
              ),
            ),
          ),

        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.location_on, size: 16),
              SizedBox(width: 5),
              Text(
                'Los Angeles, California, United States of America',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'As a product designer with UX experience, I am passionate about creating products that meet the neeeds of users while delivering a beautiful and intiutive experience. I understand that design goes beyond aesthetics and must be rooted in user needs and behavior.',
            style: TextStyle(
              fontSize: 12

            ),

          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.email, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                'lewis@example.com',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),
              ),
            ]
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                '12 Dec 1987',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
                ),

              ),
            ]
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(Icons.phone, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                '(212) 555-1234',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold               
                   ),
              ),
            ]
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Joined on 12 January 2025',
                style: TextStyle(
                  fontSize: 10
                ),
              ),
              Row(
                children: [
                  Icon(Icons.link, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.public, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.share, size: 20)
                ]
              ),

            ]
          ),
        ),
        ]
        
      ),
    );

  }
}