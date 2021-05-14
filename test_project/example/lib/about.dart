// @dart=2.11

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AboutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ABOUT',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
                SizedBox(width: 5.0,),
                Text(
                  'PAGE',
                  style: GoogleFonts.abhayaLibre(
                      color: Colors.redAccent, fontWeight: FontWeight.w900),
                ),
              ],
          ),
          actions: <Widget>[
            Opacity(
              opacity: 0,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.share,)),
            )
        ],
          elevation: 2.0,
          centerTitle: true,
        ),
      body: SingleChildScrollView(
        child:Container(
        
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
        child: Column(
                children: <Widget>[
                  Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Emo Sentiments',
                            textAlign: TextAlign.center, 
                            style: GoogleFonts.lato
                            (color: Colors.white,
                                fontSize: 25, fontWeight: FontWeight.w900),                         
                          ),
                    ),

                  SizedBox(height: 20.0,),

                  Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sentiment classification and Analysis',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.slabo13px(
                                fontSize: 20, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                  SizedBox(height: 18.0,),

                  Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'How its Work.. ?',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.roboto( color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                    SizedBox(height: 18.0,),

                  Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '1] Text Classification categorizes a paragraph into predefined groups based on its content.\n'
                            '2] This pretrained model predict if a paragraphs Sentiments is positive and negative.\n'
                            ,
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.abhayaLibre( color: Colors.white,
                                fontSize: 17, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                    SizedBox(height: 18.0,),

                  Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Here are the steps to classify a paragraph with the model.',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.roboto(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w900),                          
                          ),
                  
                ),

 SizedBox(height: 18.0,),
                 Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '1] Tokenize the paragraph and convert it to a list of word ids using a predefined vocabulart.\n'
                            '2] Feed the list to the TensorFlow lite model.\n'
                            '3] Get the Probability of the paragraph being positive or negative from the model outputs.',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.abhayaLibre(  color: Colors.white,
                                fontSize: 17, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                  

SizedBox(height: 18.0,),
                 Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Notes ',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.roboto(color: Colors.black,
                                fontSize: 18, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                    SizedBox(height: 18.0,),
                 Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '* Only English Language is Supported.\n'
                            '* Well this model was  trained on a movie reviews dataset so you may experience reduced accuracy when classify text of other domains. ',
                            textAlign: TextAlign.start ,
                            style: GoogleFonts.abhayaLibre(  color: Colors.white,
                                fontSize: 17, fontWeight: FontWeight.w900),                          
                          ),
                    ),

                ]
            )
      ),
      )
    );
  }
}
