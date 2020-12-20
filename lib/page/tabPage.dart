import 'package:demoBlog/model/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
    );
  }
}

Widget bottomBar() {
  return CupertinoTabScaffold(
// ignore: missing_return
    tabBuilder: (BuildContext context, int index) {
      return DefaultTextStyle(
        style: TextStyle(
          fontFamily: '.SF UI Text',
          fontSize: 14.0,
          color: CupertinoColors.black,
        ),
        child: CupertinoTabView(builder: (BuildContext context) {
          return pageOne();
        }),
      );
    },
    tabBar: CupertinoTabBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.today,
          ),
          label: "Today",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.rocket_fill,
          ),
          label: "Game",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.square_stack_3d_up_fill,
          ),
          label: "App",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            CupertinoIcons.search,
          ),
          label: "Search",
        ),
        if (InAppScreen.isTablet)
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.info,
            ),
            label: "iPad Info",
          ),
      ],
    ),
  );
}

Widget pageOne() {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Column(
      children: [SizedBox(height: 30), welcomeBar(), appCard()],
    ),
  );
}

Widget welcomeBar() {
  return Container(
      width: InAppScreen.mediaQuery.size.width,
      child: Column(children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          width: InAppScreen.mediaQuery.size.width,
          child: Text(
            'SUNDAY,DECEMBER 20',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          height: 40,
          margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
          width: InAppScreen.mediaQuery.size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
              Container(
                width: 40,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                    image: NetworkImage('https://cdn.alanyhq-global.net/public/haima/photo/evsio0n_logo.jpg')
                  )
                ),
              )
            ],
          )
        ),
      ]));
}

Widget appCard() {
  return Container(
    width: InAppScreen.mediaQuery.size.width,
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          width: InAppScreen.mediaQuery.size.width,
          child: Text(
            'System Apps',
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 0, 10),
          width: InAppScreen.mediaQuery.size.width,
          child: Text(
            'All default apps from Apple🍎',
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
            ),
          ),
        ),
        singleAppView(),
        singleAppView(),
        singleAppView(),
      ],
    ),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(3, 3),
        )
      ],
    ),
  );
}

Widget singleAppView() {
  return Container(
      child: Column(children: [
    Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          height: 80,
          width: 80,
          child: Padding(
            padding: EdgeInsets.all(13),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                      image: NetworkImage(
                          'https://developer.apple.com/design/human-interface-guidelines/ios/images/icons/app_icons/Phone.png'),
                    ))),
          ),
        ),
        Container(
            height: 80,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Productivity',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: Text("下载按钮👴还没想好怎么写"),
        ),
      ],
    ),
    Divider(
      height: 1,
      thickness: 1,
      color: Colors.black12,
    )
  ]));
}
