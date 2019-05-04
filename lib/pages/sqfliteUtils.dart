import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';



final String tableWeekFoods = 'weekFoods';
final String columnId = '_id';
final String columnTitle = 'title';
final String columnAuthor = 'author';
final String columnContent = 'content';
final String columnPhoto = 'photo';

class SqfLiteTool {

  openSqfLite() async{
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          // When creating the db, create the table
          await db.execute(
              'CREATE TABLE $tableWeekFoods ('
                  '$columnId INTEGER PRIMARY KEY, '
                  '$columnTitle TEXT, '
                  '$columnContent TEXT, '
                  '$columnAuthor TEXT, '
                  '$columnPhoto TEXT, '
                  ')');
        });
  }


  SqfLiteTool() {
  // Get a location using getDatabasesPath

  }
  void createTable(){

  }
}
