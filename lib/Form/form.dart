import 'package:flutter/material.dart';
class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final GlobalKey<FormState>formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Form(
            key:formkey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                      child: TextFormField(
                        validator:(val){
                          if (val!.isEmpty){
                            return 'Field required';
                          }
                          return null;
                        },
                        decoration:InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)

                          )
                        ),
                      )),
                  SizedBox(height: 10,),
                  SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator:(val){
                          if (val!.isEmpty){
                            return 'Field required';
                          }
                          return null;
                        },
                        decoration:InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)

                            )
                        ),
                      )),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(formkey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Success')));
                    }
                  }, child: Text('Submit')),
                  
                  OutlinedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Go Back'))
                ],
              ),
            ),
          )),
    );
  }
}
