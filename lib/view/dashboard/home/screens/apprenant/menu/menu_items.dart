import 'package:eschoolapp/view/dashboard/home/screens/admin/screens/list_formation.dart';
import 'package:eschoolapp/view/dashboard/home/screens/admin/screens/list_inscri.dart';
import 'package:eschoolapp/view/dashboard/home/screens/admin/screens/list_users.dart';
import 'package:eschoolapp/view/dashboard/home/screens/admin/screens/stat_screen.dart';
import 'package:eschoolapp/view/dashboard/home/screens/commun/acceuil_screen.dart';
import 'package:eschoolapp/view/dashboard/home/screens/commun/profile_screen.dart';
import 'package:eschoolapp/view/dashboard/home/screens/parents/screens/chat_screen.dart';
import 'package:eschoolapp/view/dashboard/home/widgets/test_stat.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

final List<Widget> listDashboardApprenantValues = <Widget>[
  AcceuilScreen(),
  ListUsers(),
  ChatScreen(),
  ProfileScreen()
];

final List<String> listDashboardApprenantKeys = <String>[
  "Acceuil",
  "Cours",
  "Chat",
];

final List<IconData> listIconApprenantKeys = [
  LineIcons.home,
  LineIcons.book,
  LineIcons.facebookMessenger,
];
