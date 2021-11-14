import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CameraWidgetState();
  }

}

class CameraWidgetState extends State<CameraWidget>{
  XFile? imageFile;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Choose option",style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Theme.of(context).colorScheme.primary),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: const Text("Gallery"),
                leading: Icon(Icons.account_box,color: Theme.of(context).colorScheme.primary,),
              ),

              Divider(height: 1,color: Theme.of(context).colorScheme.primary,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: const Text("Camera"),
                leading: Icon(Icons.camera,color: Theme.of(context).colorScheme.primary,),
              ),
            ],
          ),
        ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("Take or Select Image", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        backgroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 300,
              width: 400,
              child: Card(
                child:( imageFile==null)?Text("Choose Image",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,

                    )
                ): Image.file( File(  imageFile!.path)),
              ),
            ),
            CupertinoButton(
              color: Theme.of(context).colorScheme.primary,
                child: Text("Select Image", style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),
                onPressed: (){
            _showChoiceDialog(context);
            },
            ),
            CupertinoButton(
              color: Theme.of(context).colorScheme.primary,
              child: Text("Next", style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),
              onPressed: (){}
              )
          ],
        ),
      ),
    );
  }

  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

}