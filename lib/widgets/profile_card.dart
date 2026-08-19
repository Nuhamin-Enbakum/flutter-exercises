import 'package:flutter/material.dart';


class ProfileCard extends StatelessWidget {
  final String name;
  final String title;

  const ProfileCard({
    super.key,
    required this.name,
    required this.title

    });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3)
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(
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
                const Positioned(
                  bottom: -40,
                  left: 20,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/First.jpg'),
                    ),
                    
                        
                       ),
                       const Positioned(
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

          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
            children: [
              Icon(Icons.location_on, size: 16),
              SizedBox(width: 5),
              Text(
                'Los Ageles, California, United States of America',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),

              ),
            ],
          ),
          Text(
            'As a product designer with UX experience, I am passionate about creating products that meet the needs of users while delivering a beautiful and intiutive experience. I understand that design goes beyond aesthetics and must be in user needs and behavior.',
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              Icon(Icons.email, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                'lewis@example.com',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                '12 Dec 1987',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone, size: 16, color: Colors.grey),
              SizedBox(width: 5),
              Text(
                '(222) 555-1234',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Joined on 12 January 2025',
                style: TextStyle(fontSize: 10),              
                ),
                Row(
                  children: [
                    Icon(Icons.link, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.public, size: 20),
                    SizedBox(width: 10),
                    Icon(Icons.share, size: 20),
                  ],
                ),
            ],
          ),
              ],
            ),
            
              
          ),
          
          

        ],
      ),
    );

  }
}