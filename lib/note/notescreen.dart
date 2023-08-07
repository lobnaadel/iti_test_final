import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_test1/note/Hive/HiveHelper.dart';
import 'package:bloc/bloc.dart';
import 'package:iti_test1/note/cubit/note_cubit.dart';

class notescreen extends StatefulWidget {
  const notescreen({Key? key}) : super(key: key);

  @override
  State<notescreen> createState() => _notescreenState();
}

class _notescreenState extends State<notescreen> {
  @override

  final _textFieldController=TextEditingController();
  final _textFieldController2=TextEditingController();
  @override
  void _refresh(){
    setState(() {

    });}
  void initState() {

    super.initState();
  }

  @override
  void didChangeDependencies()async {
     super.didChangeDependencies();
  }




  Widget build(BuildContext context) {
    final cubit=context.read<NoteCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Keep Notes",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black54),),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: ()
          {
            cubit.clearmynote();

          },
          child: Icon(Icons.delete_outlined,size: 40,color: Colors.grey,),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
    _textFieldController.text = "";
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('TextField in Dialog'),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Text Field in Dialog"),
          ),
          actions: [
            MaterialButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              child: Text('OK'),
              onPressed: () {
                if (_textFieldController.text.isNotEmpty) {
                  cubit.addNote(_textFieldController.text);
                }
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    ).then((value) => setState(() {}));        },
     child: Icon(Icons.add,size: 35,),
      ),
      body:
      BlocBuilder<NoteCubit,NoteState>(
        builder: (context, state) {
          if(state is Noteloadingstate)
            {
              return const Center(child: CircularProgressIndicator());
            }else if(state is Noteemptystate)
              {
                return const Center(child: Text("Empty",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),);
              }else
                {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child:ListView.separated(
                          itemBuilder:(context, index) => _builditemnote(text:HiveHelper.notes[index],index: index),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                          itemCount: HiveHelper.notes.length),
                    ),
                  );
                }
        },
      ),

    );
  }




  Widget _builditemnote({
    required String text
    ,required int index
}) {
    final cubit=context.read<NoteCubit>();
    return Stack(
      children: [
        InkWell(
          onTap: ()async {
            _textFieldController2.text = HiveHelper.notes[index];
           await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('TextField in Dialog'),
                  content: TextField(
                    controller: _textFieldController2,
                    decoration: InputDecoration(hintText: "Text Field in Dialog"),
                  ),
                  actions: [
                    MaterialButton(
                      child: Text('CANCEL'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    MaterialButton(
                      child: Text('OK'),
                      onPressed: () {
                        if (_textFieldController.text.isNotEmpty) {
                          cubit.updateNote(_textFieldController2.text, index);
                        }
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            ).then((value) => setState(() {}));

          },
          child: Container(
            width: 500,
            height: 200,
            decoration: BoxDecoration(
              color:index==0? Colors.red.withOpacity(.2):
              index%2==0?Colors.blue.withOpacity(.2):Colors.green.withOpacity(.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),

            )),
          ),
        ),
        InkWell(
          onTap: (){
            cubit.removemynote(index);

          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.delete_outline,size: 35,color: Colors.red,),
          ),
        )
      ],
    );
  }
}
