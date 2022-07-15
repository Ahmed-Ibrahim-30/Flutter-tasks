import 'package:testflutter/Model/friend.dart';
import '../Widgets/CircleImage.dart';
import '../Widgets/chatWidget.dart';


List allFriends=[
  Friend(name: "Salah Elden",image: "images/2.jpg",message: "Hello ahmed Salah Elden Salah Elden Salah Elden Salah Elden Salah Elden",active: true),
  Friend(name: "Omar Gamal",image: "images/3.jpg",message: "Do you want Apples?",active: true),
  Friend(name: "Khaled gamal",image: "images/4.jpeg",message: "How are you Ahmed?fine?",active: true),
  Friend(name: "Abdo Omar",image: "images/5.jpeg",message: "I am Discover new thing",active: true),
  Friend(name: "Ibrahim Fahmy",image: "images/6.jpeg",message: "I dont need any thing sorry!!"),
  Friend(name: "Mustafa nasser",image: "images/7.jpeg",message: "i will go to Alex",active: true),
  Friend(name: "Ahmed Hamdy",image: "images/8.jpeg",message: "Welcome My Friend",active: true),
  Friend(name: "Google",image: "images/google.png",message: "Hello ahmed",active: true),
  Friend(name: "Google",image: "images/google.png",message: "Hello ahmed",active: true),
  Friend(name: "Google",image: "images/google.png",message: "Hello ahmed"),
];

List allChats=[
  ChatWidget(allFriends[0],"11:48","am"),
  ChatWidget(allFriends[1],"10:30","am"),
  ChatWidget(allFriends[2],"07:00","am"),
  ChatWidget(allFriends[3],"05:44","pm"),
  ChatWidget(allFriends[4],"11:37","pm"),
  ChatWidget(allFriends[5],"01:22","pm"),
  ChatWidget(allFriends[5],"05:39","pm"),
  ChatWidget(allFriends[6],"03:27","am"),
  ChatWidget(allFriends[7],"09:12","am"),
  ChatWidget(allFriends[8],"12:00","pm"),
  ChatWidget(allFriends[9],"04:30","pm"),
];

List allActiveFriends=[
  CircleImage(allFriends[0],addedColumn: true),
  CircleImage(allFriends[1],addedColumn: true),
  CircleImage(allFriends[2],addedColumn: true),
  CircleImage(allFriends[3],addedColumn: true),
  CircleImage(allFriends[4],addedColumn: true),
  CircleImage(allFriends[5],addedColumn: true),
  CircleImage(allFriends[6],addedColumn: true),
  CircleImage(allFriends[7],addedColumn: true),
];