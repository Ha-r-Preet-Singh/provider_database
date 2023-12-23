import 'package:provider_database_intro_46/my_db_helper.dart';

class NoteModel{



  int? id;
  String title;
  String desc;




  NoteModel({this.id,required this.title,required this.desc});



  // form map (map se ayaga model me convert hoga)
//isse humm factory method kehte hh
factory  NoteModel.fromMap(Map<String,dynamic> map){
  return


   NoteModel(
      // id: map[MyDBHelper().COLUMN_NOTE_ID],
      title: map[MyDBHelper().COLUMN_NOTE_TITLE],
      desc: map[MyDBHelper().COLUMN_NOTE_DESC]
  );
}




// to map (model me hoga map me convert hoga)


Map<String,dynamic> toMap(){
  return {
    // "${MyDBHelper().COLUMN_NOTE_ID}": id,
    "${MyDBHelper().COLUMN_NOTE_TITLE}": title,
    "${MyDBHelper().COLUMN_NOTE_DESC}": desc,

  };

}







}