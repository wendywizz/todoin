import 'package:flutter/material.dart';
import 'package:todoin/models/feed.dart';
import 'package:todoin/models/room.dart';
import 'package:todoin/models/story.dart';

final List<Story> stories = [
  Story(
    text: 'Meet us hall',
    imageUri: 'assets/images/story-1.jpg',
  ),
  Story(
    text: 'Axisment Room',
    imageUri: 'assets/images/story-2.jpg',
  ),
  Story(
    text: 'Anubis Clover Room',
    imageUri: 'assets/images/story-3.jpg',
  ),
  Story(
    text: 'Flame Heart Room',
    imageUri: 'assets/images/story-4.jpg',
  ),
  Story(
    text: 'CloverBiz Room',
    imageUri: 'assets/images/story-5.jpg',
  ),
];

final List<Feed> feeds = [
  Feed(
    title: 'Check How it Works',
    subtitle: 'Demo Video',
    icon: Icons.ac_unit,
    iconColor: Color(0xFFC44569),
  ),
  Feed(
    title: 'Check Consultant List',
    subtitle: 'Profiles',
    icon: Icons.check_sharp,
    iconColor: Color(0xFF2C3A47),
  ),
  Feed(
    title: 'Foundation List',
    subtitle: 'Company',
    icon: Icons.access_alarms_rounded,
    iconColor: Color(0xFFD6A2E8),
  ),
  Feed(
    title: 'Love and Donation',
    subtitle: 'For given people',
    icon: Icons.satellite_outlined,
    iconColor: Color(0xFFFC427B),
  ),
  Feed(
    title: 'Hello World',
    subtitle: 'One word',
    icon: Icons.zoom_out,
    iconColor: Color(0xFF1B9CFC),
  ),
];

final List<Room> rooms = [
  Room(
    name: 'Banburi Meeting Room',
    minPrice: 5,
    maxPrice: 10,
    rating: 4.3,
    introImage:
        'https://designshack.net/wp-content/uploads/flat-design-trend.jpg',
  ),
  Room(
    name: 'Aliz Co-Working Space',
    minPrice: 7,
    maxPrice: 12,
    rating: 4.8,
    introImage:
        'https://static.vecteezy.com/system/resources/previews/000/103/286/non_2x/free-flat-design-vector-background.jpg',
  ),
  Room(
    name: 'Party\'s Room',
    minPrice: 3,
    maxPrice: 6,
    rating: 3.3,
    introImage:
        'https://huddle.eurostarsoftwaretesting.com/wp-content/uploads/2018/04/free-flat-design-digital-marketing-concep-vector.jpg',
  ),
  Room(
    name: 'Adamantine Bliz',
    minPrice: 10,
    maxPrice: 30,
    rating: 4.2,
    introImage:
        'https://image.freepik.com/free-vector/flat-design-content-marketing-system-illustration_5379-124.jpg',
  ),
];

final List<Room> recents = [
  Room(
    name: 'Banburi Meeting Room',
    minPrice: 5,
    maxPrice: 10,
    rating: 4.3,
    introImage:
        'https://designshack.net/wp-content/uploads/flat-design-trend.jpg',
  ),
  Room(
    name: 'Aliz Co-Working Space',
    minPrice: 7,
    maxPrice: 12,
    rating: 4.8,
    introImage:
        'https://static.vecteezy.com/system/resources/previews/000/103/286/non_2x/free-flat-design-vector-background.jpg',
  ),
  Room(
    name: 'Party\'s Room',
    minPrice: 3,
    maxPrice: 6,
    rating: 3.3,
    introImage:
        'https://huddle.eurostarsoftwaretesting.com/wp-content/uploads/2018/04/free-flat-design-digital-marketing-concep-vector.jpg',
  ),
];
