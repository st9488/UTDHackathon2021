import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:utd_hackathon2021/UI/background.dart';

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
      const Background();

      return AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        title: Text("Choose Option",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Theme.of(context).colorScheme.primary),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery",style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                leading: Icon(Icons.account_box,color: Theme.of(context).colorScheme.primary,),
              ),

              Divider(height: 1,color: Theme.of(context).colorScheme.primary,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
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
        child: Container(
          color:  Theme.of(context).colorScheme.onBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Theme.of(context).colorScheme.onSecondary,
                height: 300,
                width: 400,
                child: Card(
                  color: Theme.of(context).colorScheme.onSecondary,
                  child:( imageFile==null)?Center(
                    child: Text("Choose Image",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20,
                        )
                    ),
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