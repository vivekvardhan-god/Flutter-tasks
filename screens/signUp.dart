
import "package:flutter/material.dart";

class signUp extends StatefulWidget {
  @override
  State<signUp> createState() => _signUpState();
}

Widget LoginButton(){
  return Center(
    child: Container(width: 100,
      height: 40,
      child: ElevatedButton(onPressed: (){}, child: Text("Login",
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20)
        )
      ),
    ),
  );
}

Widget CustomTextField(String label,double width){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(left: 30),
        child: Text("$label",style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        )),
      ),
      SizedBox(height: 5,),
      Center(
        child: Container(height: 56,
          width: width, decoration: BoxDecoration(color:Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Color.fromRGBO(43, 52, 103, 1),
        blurRadius: 6,
        offset: Offset(0,2))]),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18),
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: InputBorder.none),
              ),
    ),
      )
  ]
  );
}

Widget Password(String label,double width){
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Text("$label",style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )),
        ),
        SizedBox(height: 5,),
        Center(
          child: Container(height: 56,
            width: width, decoration: BoxDecoration(color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Color.fromRGBO(43, 52, 103, 1),
                    blurRadius: 6,
                    offset: Offset(0,2))]),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(

                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none),
            ),
          ),
        )
      ]
  );
}

class _signUpState extends State<signUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Color.fromRGBO(173, 216, 255, 1),
      appBar: AppBar(title: Text("Login Page"),),
      body: Column(
        children: [
          Image.asset('assets/images/loginImage.png'),
          SizedBox(height: 10,),
          Container(
            height: 400,
            width: 350,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextField('Email', 350),
                      Password('Password', 350),
                      SizedBox(height: 30,),
                      LoginButton(),
                      SizedBox(height: 50,),
                      Text("Don't have an account? SignUp" ,style: TextStyle(fontSize: 20),)

                    ],)
                    ),]
                  ),

              ),
            ),
        ],
      )
    );
  }
}
