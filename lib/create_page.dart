import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var textEditingController = TextEditingController();

  XFile? _image;
  ImagePicker _picker = ImagePicker();

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
        onPressed: _pickImage,
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
    return SingleChildScrollView(
      child: Column(
        children: [
          _loadImage(),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(hintText: '내용을 입력하세요', isDense: true, contentPadding: EdgeInsets.all(8.0)),

          )
        ],
      ),
    );
  }


  Future _pickImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if(null != image){
      setState(() {
         _image = image;
      });
    } else {
      // 사진 미 선택
    }
  }


  Widget _loadImage() {
    if(_image == null) {
      return Text('No Image');
    }
    var file = File(_image!.path);
    return Image.file(file);
  }
}
