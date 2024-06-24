import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const imageurl=
"https://occ-0-6501-3663.1.nflxso.net/dnm/api/v6/Qs00mKCpRvrkl3HZAN5KwEL1kpE/AAAABYlMwwSy1Tt8JCUAVLnygg4Aji4VMPo-Gv7QGkz4bvNN3Y1ZivkG9AHSfLaawj5zl0LzmygZS7UuismPbHctu5Ld4G57Zgq-GLU.jpg?r=1e3";

class searchidle extends StatelessWidget {
  searchidle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
            kheight,
      searchTextTitle(title:'Top Searches' ,),
          kheight, 
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx,index)=>topsSearchitemTile(),
               separatorBuilder: (ctx,index)=>kheight20, 
               itemCount: 10),
          )
      ],
    );
  }
}


class topsSearchitemTile extends StatelessWidget {
  const topsSearchitemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return Row(
     children: [ 
      Container(
      width: screenwidth*0.34,
      height: 70,
        decoration: BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageurl))),
            
      ),
      kwidth,
      Expanded(
        child: Text(
          'MovieName',
          style: TextStyle(
            color: kwhite,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),),
      ),
      CircleAvatar(
        backgroundColor: kwhite,
        radius: 25,
        child:   CircleAvatar(
        backgroundColor: kblackcolor,
        radius: 23,
        child: Icon(CupertinoIcons.play_fill,
        color: kwhite,
        ),
      )
      )
     ],
    );
  }
} 