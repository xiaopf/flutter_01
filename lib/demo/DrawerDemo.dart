import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('xiaopf',style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('xiaopengfei123@gamil.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://resources.ninghao.org/images/contained.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6),
                  BlendMode.hardLight
                )
              ), 
            )
          ),
          ListTile(
            title: Text('message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size:22.0),
            onTap: () => Navigator.pop(context)
          ),
          ListTile(
            title: Text('favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size:22.0),
            onTap: () => Navigator.pop(context)
          ),
          ListTile(
            title: Text('settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size:22.0),
            onTap: () => Navigator.pop(context)
          ),
        ],
      )
    );
  }
}