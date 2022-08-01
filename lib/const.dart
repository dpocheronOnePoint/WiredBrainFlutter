import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'models/coffee.dart';

const Color darkBrown = Color(0xFFA26E47);
const Color lightBrown = Color(0xFFF9E8D4);
const Color brown = Color(0xFF9C5700);
const Color facebookColor = Color(0xFF4867AA);

final List<Coffee> coffees = [
  const Coffee(
      coffeeIcon: FontAwesomeIcons.mugHot, name: "Espresso ", price: 8),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.mugHot, name: "Cappuccino", price: 10),
  const Coffee(coffeeIcon: FontAwesomeIcons.mugHot, name: "Mocha", price: 12),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.beerMugEmpty, name: "Americano", price: 7),
  const Coffee(
    coffeeIcon: FontAwesomeIcons.mugHot,
    name: "Italian Macchiato",
    price: 5,
  ),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.mugHot, name: "Flat White", price: 3),
  const Coffee(
    coffeeIcon: FontAwesomeIcons.mugHot,
    name: "American Affogato",
    price: 11,
  ),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.mugHot, name: "Long Black", price: 4),
  const Coffee(coffeeIcon: FontAwesomeIcons.mugHot, name: "Latte", price: 12),
  const Coffee(
    coffeeIcon: FontAwesomeIcons.beerMugEmpty,
    name: "American Espresso",
    price: 9,
  ),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.beerMugEmpty,
      name: "CAFÈ AU LAIT.",
      price: 10),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.mugHot, name: "AFFÈ MOCHA.", price: 12),
  const Coffee(
      coffeeIcon: FontAwesomeIcons.beerMugEmpty, name: "Americano", price: 7),
  const Coffee(
    coffeeIcon: FontAwesomeIcons.mugHot,
    name: "Double Exspersso",
    price: 5,
  ),
];
