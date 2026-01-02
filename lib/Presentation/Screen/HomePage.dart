import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc/BlocPage.dart';
import '../Bloc/BlocState.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child:BlocBuilder<BlocPage,BlocState>(builder:(context,state){
         if(state is loadingState){
           return Center(child: CircularProgressIndicator(),);
         }
         else if(state is UpdateDataLoaded){
           return  ListView.builder(
               itemCount: state.userData.length,
               itemBuilder:(context,index){
                 return ListTile(
                   title: Text("${state.userData[index].name}"),
                   subtitle: Text("${state.userData[index].email}"),
                 );

               });
         }
         else if(state is ErrorState){
           return Center(child: Text("There is no Data"),);
         }
         else{
           return Center(child: Text("SomeThing is Wrong"),);
         }
        }),
      ),
    );
  }
}
