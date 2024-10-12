import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamicapp/Hadeth/HadethContent.dart';

class hadethTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/qur2an_screen_logo.png'),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => GestureDetector(
                    child: Text(HadethContent(),                      ,
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                    ),
                    onTap: () {
                      Navigator.of(_).pushNamed(
                        SuraScreen.routeName,
                        arguments:
                        SuraArgument(
                            index: index,
                            SuraName: Soura[index]
                        ),
                      );
                    },
                  ),
                  itemCount: 100,
                ),
              ),
            ],
          ),
        )
    );
  }
  
  Future<void>LoadHadethContant ()async{
    String hadethContant = rootBundle.loadString('assets/Hadeth/ahadeth.txt');
    List<String> hadethSplit = hadethContant.split('#');
    hadethSplit.map((hadethString){
      List<String>hadethLines = hadethString.split('/n');
      String title = hadethContant[0];
      hadethLines.removeAt(0);
      List <String> Content = hadethLines;
      return HadethContent(hadethContent: Content, hadethTitle:title);
    }).toList();


  }
}
