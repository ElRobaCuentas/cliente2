import 'package:AhorraYa/src/components/category_card.dart';
import 'package:flutter/material.dart';
import 'package:AhorraYa/src/components/navbar.dart';
import 'package:AhorraYa/src/components/navbar_superior.dart';
// import 'package:AhorraYa/src/components/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double alto = MediaQuery.of(context).size.height;
    double ancho = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 189, 90, 1),
      // body: Column(children: <Widget>[CategoryCard(), NavBar()]));
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  height: alto * 0.1,
                  color: Color.fromRGBO(5, 39, 92, 1),
                  child: NavBarSuperior()),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromRGBO(255, 222, 172, 1),
                ),
                height: alto * 0.7,
                width: ancho * 0.9,
                child: CategoryCard(),
              ),
              Container(
                  height: alto * 0.1,
                  color: Color.fromRGBO(5, 39, 92, 1),
                  child: NavBar()),
            ],
          ),
        ),
      ),
    );
  }
}
