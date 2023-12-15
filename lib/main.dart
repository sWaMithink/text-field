import 'package:flutter/material.dart';

main(){
  runApp(Yogesh());
}
class Yogesh extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "flutter app",debugShowCheckedModeBanner: false,
      theme:ThemeData(
          primarySwatch: Colors.orange,
        ),
      home: PanditScreen(),
    );
  }

}
class PanditScreen extends StatelessWidget{
  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('TextField'),
        ),

        body:Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                 // keyboardType: TextInputType.phone ,
                  controller: emailText,

                  decoration: InputDecoration(
                    hintText: 'Enter Email here..',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color:Colors.deepOrange,
                            width:2
                        )
                    ),
                      enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(12),
                                 borderSide: BorderSide(
                                   color:Colors.blueAccent,
                                      width:2
                                     )
                                   ),
                        disabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color:Colors.black,
                            width:2
                        )
                    ),
                        //suffixText: "username exit",
                         suffixIcon: IconButton(
                            icon:  Icon(Icons.remove_red_eye, color: Colors.orange,),
                        onPressed:(){

                        },
                       ),
                          //prefixIcon: Icon(Icons.phone,
                              prefixIcon: Icon(Icons.email,
                            color: Colors.blue,)
                  ),
                ),


                Container(height: 12,),


                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password here..',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  String uEmail = emailText.text.toString();
                  String uPass = passText.text;
                  
                  print('Email: $uEmail,pass:$uPass');
                }, child: Text('Login',)
                )
              ],
            ),
          ),
        )

    );
  }

}
