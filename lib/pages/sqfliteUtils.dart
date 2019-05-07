import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';
/*
* 数据库操作类和表结构类
* */


final String tableWeekFoods = 'weekFoods';
final String columnId = 'id';
final String columnTitle = 'title';
final String columnAuthor = 'author';
final String columnContent = 'content';
final String columnPhoto = 'photo';

class Foods{
  int id;
  String Title;
  String Author;
  String Content;
  String Photo;

  Map<String,dynamic> toMap(){
    var map = <String,dynamic>{
      columnTitle:Title,
      columnAuthor:Author,
      columnContent:Content,
      columnPhoto:Photo,
    };
    if (id != null){
      map[columnId] = id;
    }
    return map;
  }
  //构造函数
  Foods(int id,String Title,String Author,String Content,String Photo){
    this.id = id;
    this.Title = Title;
    this.Author = Author;
    this.Content = Content;
    this.Photo = Photo;
  }


  Foods.fromMap(Map<String,dynamic> map){
    id = map[columnId];
    Title = map[columnTitle];
    Author = map[columnAuthor];
    Content = map[columnContent];
    Photo = map[columnPhoto];
  }

}
/*
* sqflite操作类、增删改查
* */
class SqfLiteTool {
  Database database;

  openSqfLite() async{
    var databasesPath = await getDatabasesPath();
    print("数据库路径:"+databasesPath);
    String path = join(databasesPath, 'WeekFoods.db');
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              '''CREATE TABLE $tableWeekFoods (
                  $columnId INTEGER PRIMARY KEY AUTOINCREMENT, 
                  $columnTitle TEXT, 
                  $columnContent TEXT, 
                  $columnAuthor TEXT, 
                  $columnPhoto TEXT)
                  ''');
        });
  }

  //插入记录
  Future<Foods> insert(Foods foods) async {
    foods.id = await database.insert(tableWeekFoods, foods.toMap());
    return foods;
  }

  //查询一条记录
  Future<Foods> getFood(int id) async {
    List<Map> maps = await database.query(tableWeekFoods,columns: [
      columnId,
      columnTitle,
      columnAuthor,
      columnContent,
      columnPhoto
    ],
      where: '$columnId = ?',
      whereArgs: [id]);
    if (maps.length > 0){
      return Foods.fromMap(maps.first);
    }
    return null;
  }

  //查询全部的记录
  Future<List<Foods>> queryAll() async {
    List<Map> maps = await database.query(tableWeekFoods,columns: [
      columnId,
      columnTitle,
      columnAuthor,
      columnContent,
      columnPhoto
    ]);
    if (maps == null || maps.length == 0){
      return null;
    }
    List<Foods> foods = [];
    for (int i = 0;i < maps.length; i++){
      foods.add(Foods.fromMap(maps[i]));
    }
    return foods;
  }

  //删除一条记录
  Future<int> delete(int id)  async {
    return await  database.delete(tableWeekFoods,where: '$columnId = ?',whereArgs: [id]);
  }

  //更新一条记录
  Future<int> update(Foods foods) async {
    return await database.update(tableWeekFoods,foods.toMap(),
    where: '$columnId = ?', whereArgs: [foods.id]
    );
  }

  // close db
  close() async {
    await database.close();
    print("* sqflite close。。。");
  }

}
