import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProflieModel {
  String name;
  IconData icon;
  int number;
  // final String name2;
  // final IconData icon2;
  // final int number2;

  ProflieModel({
    this.name,
    this.icon,
    this.number,
  });
}

final List<ProflieModel> profiles = [
  ProflieModel(
    name: "unmarached me",
    icon: FontAwesomeIcons.peopleArrows,
    number: 18,
  ),
  ProflieModel(
    name: "todo",
    icon: FontAwesomeIcons.listAlt,
    number: 29,
  ),
  ProflieModel(
    name: "be good",
    icon: FontAwesomeIcons.hardHat,
    number: 90,
  ),
  ProflieModel(
    name: "Hello",
    icon: FontAwesomeIcons.google,
    number: 44,
  ),
  ProflieModel(
    name: "unmarached me",
    icon: FontAwesomeIcons.peopleArrows,
    number: 18,
  ),
  ProflieModel(
    name: "todo",
    icon: FontAwesomeIcons.listAlt,
    number: 29,
  ),
  ProflieModel(
    name: "be good",
    icon: FontAwesomeIcons.hardHat,
    number: 90,
  ),
  ProflieModel(
    name: "Hello",
    icon: FontAwesomeIcons.google,
    number: 44,
  ),
  ProflieModel(
    name: "unmarached me",
    icon: FontAwesomeIcons.peopleArrows,
    number: 18,
  ),
  ProflieModel(
    name: "todo",
    icon: FontAwesomeIcons.listAlt,
    number: 29,
  ),
  ProflieModel(
    name: "be good",
    icon: FontAwesomeIcons.hardHat,
    number: 90,
  ),
  ProflieModel(
    name: "Hello",
    icon: FontAwesomeIcons.google,
    number: 44,
  ),
];
const String imgBg = "assets/4.jpg";
const String imgPg = "assets/img0.jpg";
