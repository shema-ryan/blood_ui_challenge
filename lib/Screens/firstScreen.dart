import 'package:blood_ui_challenge/Screens/detailsScreen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
class FirstScreen extends StatelessWidget {
  static const String routeName ='/firstScreen';
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.width ;
    final _theme = Theme.of(context);
    final spacer = SizedBox(
      height: _size * 0.025,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_outlined, color: _theme.primaryColor,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Step1- Type Your Location', style: _theme.textTheme.headline6.copyWith(
                fontWeight: FontWeight.bold
              ),),
             spacer,
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  filled: true ,
                  fillColor: const Color(0xffffffff) ,
                  hintText: 'Enter Your Location',
                ),
              ),
              spacer,
              Text('Step2- Select Your Need', style: _theme.textTheme.headline6.copyWith(
                  fontWeight: FontWeight.bold
              ),),
              spacer,
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 BuildSelection('OXYGEN' ,'assets/images/oxygen-tank (1) 1.png' ),
                 BuildSelection('DOCTORS' ,'assets/images/stethoscope 1.png' ),
                 BuildSelection('VOLUNTEER' ,'assets/images/health-care 2.png' ),
               ],
             ),
              spacer,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildSelection('BLOOD' ,'assets/images/donor 2.png' ),
                  BuildSelection('PLASMA' ,'assets/images/Group.png' ),
                  SizedBox(width: _size * 0.2544, height: _size * 0.2544,),
                ],
              ),
              spacer,
              Center(
                child: OutlinedButton(
                   style: OutlinedButton.styleFrom(
                     backgroundColor:  Constants.iconButtonColor,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                     minimumSize: Size(_size * 0.763 , _size * 0.102),
                   ),
                    onPressed: ()=>print('hello shema'), child: Text('Search' , style: _theme.textTheme.headline6.copyWith(
                  color: Colors.white
                ),)),
              ),
              SizedBox(
                height: _size * 0.07633,
              ),
              Text('Want to be a Donor or Volunteer', style: _theme.textTheme.headline6.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 19
              ),),
               SizedBox(
                height: _size * 0.07633,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildSelectionB('BLOOD' ,'assets/images/donor 2.png' ),
                  BuildSelectionB('PLASMA' ,'assets/images/Group.png'),
                  BuildSelectionB('VOLUNTEER' ,'assets/images/health-care 2.png' ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildSelection extends StatefulWidget {
  final String text ;
  final String imageUrl;

  const BuildSelection(this.text , this.imageUrl);

  @override
  _BuildSelectionState createState() => _BuildSelectionState();
}

class _BuildSelectionState extends State<BuildSelection> {
  Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size.width ;
    return Container(
      height: _size * 0.2544,
      width: _size * 0.2544,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: _color,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Constants.selectedColor,
          onTap: (){
            setState(() {
              if(_color == Colors.white){
                _color = Constants.fillColor;
                showModalBottomSheet( backgroundColor: Colors.grey[100],  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10) , topLeft: Radius.circular(10)),
                ),context: context, builder: (_)=>Column(
                  children: [
                   for(int i =0 ; i < 4 ; i++) Card(
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.all(10.0),
                      child: ListTile(
                        trailing: ElevatedButton(
                          onPressed: (){},
                          child:const  Text('Call'),
                        ),
                        title: Text('MAHADEV OXYGEN SUPPLY' , style: _theme.textTheme.headline6.copyWith(
                          color: Constants.textColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                        subtitle: const Text('90000000'),
                      ),
                    )
                  ],
                ));
              }
               else{
                _color = Colors.white;
              }
            });
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(widget.imageUrl),
              Text(widget.text , style: _theme.textTheme.subtitle1,)
            ],
          ),
        ),
      ),
    );
  }
}


class BuildSelectionB extends StatelessWidget {
  final String text ;
  final String imageUrl;
  const BuildSelectionB( this.text, this.imageUrl) ;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _size = MediaQuery.of(context).size.width;
    return Container(
      height: _size * 0.2544,
      width: _size * 0.2544,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Colors.white,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          splashColor: Constants.selectedColor,
          onTap: (){
           Navigator.of(context).pushNamed(DetailScreen.routeName, arguments: text );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(imageUrl),
              Text(text , style: _theme.textTheme.subtitle1,)
            ],
          ),
        ),
      ),
    );
  }
}




