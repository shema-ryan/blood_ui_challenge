import 'package:blood_ui_challenge/constants.dart';
import 'package:flutter/material.dart';
class DetailScreen extends StatelessWidget {
  static const String routeName = '/DetailScreen';
  @override
  Widget build(BuildContext context) {
    final _text = ModalRoute.of(context).settings.arguments as String ;
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(_text),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: _size * 0.9923,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('A BIT ABOUT YOU' , style: _theme.textTheme.headline6.copyWith(
                  color: Constants.textColor
                ),),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('NAME' , style:_theme.textTheme.headline6,),
                        SizedBox(width : _size * 0.6361 ,child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                            filled: true ,
                            fillColor: Constants.fillColor.withOpacity(0.2),
                            hintText: 'Your First Name',
                          ),
                        ),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('CONTACT' , style:_theme.textTheme.headline6,),
                        SizedBox(width : _size * 0.6361 , child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                            filled: true ,
                            fillColor: Constants.fillColor.withOpacity(0.2),
                            hintText: '10 Digit Phone No',
                          ),
                        ),)
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('STATE' , style:_theme.textTheme.headline6,),
                        SizedBox(width : _size * 0.6361 ,child: DropdownButtonFormField(
                          onChanged: (value ){},
                          items: [
                            DropdownMenuItem(child: Text('kampala'), value: 1,),
                            DropdownMenuItem(child: Text('kigali') , value: 2,),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                            filled: true ,
                            fillColor: Constants.fillColor.withOpacity(0.2),
                            hintText: 'Select Your State',
                          ),
                        ),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('DISTRICT' , style:_theme.textTheme.headline6,),
                        SizedBox(width : _size * 0.6361 , child: DropdownButtonFormField(
                          onChanged: (_){},
                          items: [
                            DropdownMenuItem(child: Text('kampala'), value: 1,),
                            DropdownMenuItem(child: Text('kigali') , value: 2,),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none
                            ),
                            filled: true ,
                            fillColor: Constants.fillColor.withOpacity(0.2),
                            hintText: 'Select Your District',
                          ),
                        ),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: _size * 0.5089,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Age?' , style: _theme.textTheme.headline6,),
                Expanded(child:DropdownButtonFormField(
                  onChanged: (value){},
                  items: [
                    DropdownMenuItem(child: Text('kampala'), value: 1,),
                    DropdownMenuItem(child: Text('kigali') , value: 2,),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    filled: true ,
                    fillColor: Constants.fillColor.withOpacity(0.2),
                    hintText: 'Select Your Age',
                  ),
                ),),
                Text('What\'s Your Blood Group ?' , style: _theme.textTheme.headline6,),
                Expanded(
                  child: DropdownButtonFormField(
                    onChanged: (value){

                    },
                    items: [
                      DropdownMenuItem(child: Text('kampala'), value: 1,),
                      DropdownMenuItem(child: Text('kigali') , value: 2,),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      filled: true ,
                      fillColor: Constants.fillColor.withOpacity(0.2),
                      hintText: 'Select Your Blood Group',
                    ),
                  ),
                ),
              ],
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor:  Constants.iconButtonColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                minimumSize:Size(_size * 0.8906 , _size* 0.1017),
              ),
              onPressed: ()=>print('hello shema'), child: Text('Submit' , style: _theme.textTheme.headline6.copyWith(
              color: Colors.white
          ),))
        ],
      ),
    );
  }
}
