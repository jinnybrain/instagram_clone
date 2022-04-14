import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram Clone',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: _buildBody(),
    );
  }


  Widget _buildThumbnail(String url){
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: Image.network(url, fit: BoxFit.cover, alignment: Alignment.topCenter),

    );
  }

  Widget _buildBody(){
    String _email = 'jinnybrain@gmail.com';
    String _name = '이현진';

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget> [
                Text('Instagram에 오신 것을 환영합니다', style: TextStyle(fontSize: 24.0)),
                Padding(padding: EdgeInsets.all(8.0)),
                Text('사진과 동영상을 보려면 팔로우하세요.'),
                Padding(padding: EdgeInsets.all(16.0)),
                SizedBox(
                  width: 240.0,
                    child: Card(
                      elevation: 4.0,
                      child: Column(
                        children: <Widget> [
                          Padding(padding: EdgeInsets.all(4.0)),
                          SizedBox(
                            width: 80.0,
                              height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://i.kym-cdn.com/photos/images/newsfeed/001/673/605/8bc.jpg'),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Text(_email, style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(_name),
                          Padding(padding: EdgeInsets.all(8.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              _buildThumbnail('https://static.smalljoys.me/2020/04/2035862_MYH20191028019700038_P4_1587637440.jpg'),
                              Padding(padding: EdgeInsets.all(1.0)),
                              _buildThumbnail('https://static.wikia.nocookie.net/true-beauty/images/5/5d/Jugyeong_03.jpg/revision/latest?cb=20210104072231'),
                              Padding(padding: EdgeInsets.all(1.0)),
                              _buildThumbnail('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI5iJZFrkRs85jpV_qZnBjrkZ9jHq0UHVoTA&usqp=CAU')
                            ],
                          ),

                          Padding(padding: EdgeInsets.all(4.0)),
                          Text('Facebook 친구'),
                          Padding(padding: EdgeInsets.all(4.0)),
                          ElevatedButton(
                              onPressed: _onFlowPressed,
                              child: Text('팔로우')
                          ),

                          Padding(padding: EdgeInsets.all(4.0)),
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onFlowPressed() {
  }
}
