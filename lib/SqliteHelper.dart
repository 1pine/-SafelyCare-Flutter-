import 'dart:io';
import '/main.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserModel {
  int? id;
  String username;
  String paseword;

  UserModel({
    this.id,
    required this.username,
    required this.paseword,
  });

  factory UserModel.fromMapToModel(Map<String, dynamic> mapa) => UserModel(
    id: mapa["id"],
    username: mapa["name"],
    paseword: mapa["height"],
  );

  factory UserModel.fromJson(Map<String, dynamic> mapa) => UserModel(
    id: mapa["id"],
    username: mapa["name"],
    paseword: mapa["height"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": username,
    "height": paseword,
  };
}

class DBManager {
  Database? myDatabase;
  String tableName = 'mytable';

  static final DBManager db = DBManager._();
  DBManager._();
  Future<Database?> getCheckDatabase() async {
    if (myDatabase != null) return myDatabase;
    myDatabase = await initDB();
    return myDatabase;
  }

  Future<Database> initDB() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'MYDB.db');
    print(path);
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int v) async {
          await db.execute(
              "CREATE TABLE $tableName(username TEXT PRIMARY KEY, password TEXT)");
        });

  }

  Future<List> getDBInfo() async {
    final Database? databaseDB = await getCheckDatabase();
    List res =
    await databaseDB!.query("SELECT * FROM $tableName ORDER BY username DESC");
    return res;
  }

  // 获取所有用户
  Future<List<UserModel>> getUsers() async {
    List<UserModel> res = [];
    final Database? databaseDB = await getCheckDatabase();
    // print(222);
    List getRes = await databaseDB!.query(tableName, orderBy: 'username DESC');
    // getRes = getRes.reversed.toList();
    // getRes.forEach((element) {
    //   res.add(UserModel.fromMapToModel(element));
    // });
    res = getRes.map<UserModel>((e) => UserModel.fromMapToModel(e)).toList();
    return res;
  }

  customInsetSqlStr(String sqlStr) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!.rawInsert(sqlStr);
    print('执行结果$res');
  }

  // 执行表得插入
  insertToTab(a,b) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!.rawInsert(
        "INSERT INTO $tableName(name,height) VALUES('$a','$b')");
    print('执行结果$res');
  }

  insertUser(UserModel user) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!.insert(tableName, user.toJson());
    //     {
    //   "name":user.name,
    //   "height":user.height,
    // }
    //(res!=null) ? inserted=true: inserted=false;
    print('执行结果$res');
  }

  // 更新表操作
  Future<int> updataTableRaw(UserModel user) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!.rawUpdate(
        "UPDATE $tableName SET name = ${user.username}, author = ${user.paseword}  WHERE id = ${user.id}");
    return res;
  }

  // 更新用户
  updataUser(UserModel user) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!
        .update(tableName, user.toJson(), where: "id = ${user.id}");
    print('执行结果$res');
  }

  Future<int> deleteTableRaw(int userId) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!
        .rawDelete("DELETE FROM $tableName WHERE id = $userId");
    return res;
  }

  deletaUser(int userId) async {
    final Database? databaseDB = await getCheckDatabase();
    int res = await databaseDB!.delete(tableName, where: "id = $userId");
    print('执行结果$res');
  }
}