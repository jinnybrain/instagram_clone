import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.send,
              color: Colors.black,
            )),
      ],
      leading: BackButton(color: Colors.black),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Text('No Image'),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(hintText: '내용을 입력하세요', isDense: true, contentPadding: EdgeInsets.all(8.0)),

        )
      ],
    );
  }
}
