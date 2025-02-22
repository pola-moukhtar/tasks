import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title:Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("News",style: TextStyle(color:Colors.black ,fontSize: 30),),
              Text("Cloud",style: TextStyle(color: Colors.yellow,fontSize: 30),)
            ]) ),
       
       body: SingleChildScrollView(
         child: Column(
          
          children: [
            
            SingleChildScrollView(
              
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  SizedBox(width: 20,),
                  NewWidget(160,110,'https://thumbs.dreamstime.com/b/young-man-reading-book-sitting-bench-park-male-189127014.jpg','General'),
                  SizedBox(width: 20,),
                  NewWidget(160, 110, 'https://foto.wuestenigel.com/wp-content/uploads/api/business-table-background-with-a-cup-of-coffee.jpeg','Business'),
                  SizedBox(width: 20,),
                  NewWidget(160,110,'https://thumbs.dreamstime.com/b/young-man-reading-book-sitting-bench-park-male-189127014.jpg','General'),
                  SizedBox(width: 20,),
                  NewWidget(160, 110, 'https://foto.wuestenigel.com/wp-content/uploads/api/business-table-background-with-a-cup-of-coffee.jpeg','Business'),
                  SizedBox(width: 20,),
                  NewWidget(160,110,'https://thumbs.dreamstime.com/b/young-man-reading-book-sitting-bench-park-male-189127014.jpg','General'),
                  SizedBox(width: 20,),
                  ]),
            ),
         
            SizedBox(height: 10),
         
            NewWidget(390, 250, 'https://th.bing.com/th/id/OIP.RKV4khy8Ms03Vkhrpg5GkgHaEK?rs=1&pid=ImgDetMain'),
         
            SizedBox(height: 5,),
         
                  textwidget(20,'First human bird flu case reported in Ohio, Department of Health confirms - ...',Colors.black),
             
                  SizedBox(height: 5),
            
                  textwidget(15, 'A farrmer in Mercer Country,Ohio has been infected with bird flu, the Ohio Department of Health ann ...'),
                  SizedBox(height: 10),
          
                  NewWidget(350, 180, 'https://i.pinimg.com/originals/96/a7/d6/96a7d6389a8104de8e637fd9e7f26769.png'),
                  
                  textwidget(20, 'PS5 State of play February 2025: the best trailers and biggest reveals - The .....',Colors.black),
             
                  SizedBox(height: 5),
                  
                  textwidget(15, 'Sony is holding a state of play livestream on .....'),
                  
                  
                  NewWidget(350, 180, 'https://i.pinimg.com/originals/96/a7/d6/96a7d6389a8104de8e637fd9e7f26769.png'),
                  
                  textwidget(20, 'PS5 State of play February 2025: the best trailers and biggest reveals - The .....',Colors.black),
             
                  SizedBox(height: 5),
                  
                  textwidget(15, 'Sony is holding a state of play livestream on .....'),

                  NewWidget(350, 180, 'https://i.pinimg.com/originals/96/a7/d6/96a7d6389a8104de8e637fd9e7f26769.png'),
                  
                  textwidget(20, 'PS5 State of play February 2025: the best trailers and biggest reveals - The .....',Colors.black),
             
                  SizedBox(height: 5),
                  
                  textwidget(15, 'Sony is holding a state of play livestream on .....'),

                  NewWidget(350, 180, 'https://i.pinimg.com/originals/96/a7/d6/96a7d6389a8104de8e637fd9e7f26769.png'),
                  
                  textwidget(20, 'PS5 State of play February 2025: the best trailers and biggest reveals - The .....',Colors.black),
             
                  SizedBox(height: 5),
                  
                  textwidget(15, 'Sony is holding a state of play livestream on .....'),

                  NewWidget(350, 180, 'https://i.pinimg.com/originals/96/a7/d6/96a7d6389a8104de8e637fd9e7f26769.png'),
                  
                  textwidget(20, 'PS5 State of play February 2025: the best trailers and biggest reveals - The .....',Colors.black),
             
                  SizedBox(height: 5),
                  
                  textwidget(15, 'Sony is holding a state of play livestream on .....'),
          ]
         ),
       ),
      ) 
      );
  }
}

class textwidget extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const textwidget(this.size,this.text,[this.color=Colors.black54]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: 
      Text('$text',style: TextStyle(fontSize: size,color: color),),
    );
  }
}

class NewWidget extends StatelessWidget {
  final double width;
  final double height;
  final String url;
  final String text;
  const NewWidget(this.width,this.height,this.url,[this.text='']);
  // const NewWidget.text(this.width,this.height,this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: width,height: height,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(30),
        image: DecorationImage(image: NetworkImage('$url'),fit: BoxFit.cover)
      ),
      child: Text('$text',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),alignment: Alignment.center,
    );
  }
}

