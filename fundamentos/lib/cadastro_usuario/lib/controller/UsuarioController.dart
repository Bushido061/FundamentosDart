import 'package:cadastro_usuario/model/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UsuarioController{
  static Database? _bancoDeDados;
  
  Future<Database> get bancoDeDados async{
    if(_bancoDeDados != null ){
      return _bancoDeDados!;
    }else{
      _bancoDeDados = await _iniciarBancoDeDados();
      return _bancoDeDados!;
    }
  }

  Future<Database> _iniciarBancoDeDados() async{
    String caminho = join(await getDatabasesPath(), 'usuarios.db');
    return await openDatabase(
      caminho,
      version: 1,
      onCreate: (db,version) async{
        await db.execute('''
                          CREATE TABLE usuario(
                          id INTEGER PRIMARY KEY AUTOINCREMENT,
                          nome TEXT,
                          email TEXT,
                          senha TEXT
                          )
                          ''');
      });

  }

  Future <int> acionarUsuario(Usuario usuario) async{
    final db = await bancoDeDados;

    return await db.insert('usuario', usuario.toMap());
  }
}