import 'package:ecommerce/screen/menu/account.dart';
import 'package:ecommerce/screen/menu/favorite.dart';
import 'package:ecommerce/screen/menu/history.dart';
import 'package:ecommerce/screen/menu/home.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: <Widget>[
          Offstage(
            offstage: selectIndex != 0,
            child: TickerMode(enabled: selectIndex == 0, child: Home()),
          ),
          Offstage(
            offstage: selectIndex != 1,
            child: TickerMode(
              enabled: selectIndex == 1,
              child: Favorite(),
            ),
          ),
          Offstage(
            offstage: selectIndex != 2,
            child: TickerMode(
              enabled: selectIndex == 2,
              child: History(),
            ),
          ),
          Offstage(
            offstage: selectIndex != 3,
            child: TickerMode(
              enabled: selectIndex == 3,
              child: Account(),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
                child: Icon(
                  Icons.history,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectIndex = 3;
                  });
                },
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
