 
import 'package:flutter/material.dart';

class Moviemoreposterimages extends StatelessWidget {
  final List<String> moreimages;

  const Moviemoreposterimages({Key key, this.moreimages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text("More Images of the movies",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
        ),
        Container(
          height: 170,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
             separatorBuilder: (context,index)=>SizedBox(width: 8), itemCount: moreimages.length,
          itemBuilder: (context, index) => ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)
            
            ),
            child: Container(
              width: MediaQuery.of(context).size.width/4,
              height: 160,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(moreimages[index]),fit: BoxFit.cover)),
            ),
          ),),
        )

      ],
    );
  }
}
