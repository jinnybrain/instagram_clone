import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var _count = 0;
  var _follower = 0;
  var _following = 0;

  var _name = '이현진';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.exit_to_app),
          color: Colors.black,
        )
      ],
    );
  }

  Widget _buildBody() {
    String _profileImage =
        'https://i.kym-cdn.com/photos/images/newsfeed/001/673/605/8bc.jpg';
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(_profileImage),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 80.0,
                    height: 80.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                            width: 28.0,
                            height: 28.0,
                            child: FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.white,
                              elevation: 0,
                            )),
                        SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                              elevation: 0,
                              onPressed: null,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('$_name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0))
            ],
          ),
          Text(
            '$_count\n게시물',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '$_follower\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '$_following\n팔로잉',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
