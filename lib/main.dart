import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller=TextEditingController();
  var no2Controller=TextEditingController();
  var Result='';

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Basic Calculator'),
     ),
     body:Container(
       color: Colors.grey,
       child: Center(

           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextField(style: TextStyle(color: Colors.black87),
                 decoration: InputDecoration(
                     hintText: ('Enter the first no'),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(13)),
                   filled: true,
                   fillColor: Colors.blue
                 ),
                 keyboardType: TextInputType.number,
                 controller: no1Controller,
               ),Padding(padding: EdgeInsets.all(3.0)),
               TextField(
                 decoration: InputDecoration(

                   hintText: ('Enter the second no'),
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(13)),
                   filled: true,
                   fillColor: Colors.green
                 ),
                 keyboardType: TextInputType.number,
                 controller: no2Controller,
               ),

               Padding(
                 padding: const EdgeInsets.all(22.0),

                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       ElevatedButton(onPressed: (){
                         var no1 =int.parse(no1Controller.text.toString());
                         var no2 =int.parse(no2Controller.text.toString());

                         var sum = no1+no2;
                         Result="The sum of $no1 and $no2 is $sum ";
                         setState(() {

                         });

                       }, child:
                       Text('Add',style: TextStyle(fontSize: 15),)),
                       ElevatedButton(onPressed: (){
                         var no1=int.parse(no1Controller.text.toString());
                         var no2=int.parse(no2Controller.text.toString());
                          var sub =no1-no2;
                          Result="The substracton of $no1 and $no2 is $sub";
                          setState(() {

                          });

                       } ,child:
                       Text('Sub',style: TextStyle(fontSize: 15),)),


                       ElevatedButton(onPressed: (){
                         var no1= int.parse(no1Controller.text.toString());
                         var no2= int.parse(no2Controller.text.toString());
                         var multi =no1*no2;
                         Result="The Product of $no1 and $no2 is $multi";
                         setState(() {

                         });
                       }, child:
                       Text('Multi',style: TextStyle(fontSize: 15),)),
                       ElevatedButton(onPressed: (){
                         var no1 =int.parse(no1Controller.text.toString());
                         var no2= int.parse(no2Controller.text.toString());
                         var Div=no1/no2;
                         Result="The division of $no1 and $no2 is ${Div.toStringAsFixed(2)}";
                         setState(() {

                         });
                       }, child:
                       Text('Div',style: TextStyle(fontSize: 15),))
                     ],
                   ),
                 ),

               Padding(padding: EdgeInsets.all(22.0),
                 child: Text(Result,style: TextStyle(fontSize:24,color: Colors.black87),)),

             ],
           ),
         ),
       ),


   );
  }
}
