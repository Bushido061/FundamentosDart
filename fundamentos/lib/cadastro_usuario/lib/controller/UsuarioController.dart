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

  Future <int> adicionarUsuario(Usuario usuario) async{
    final db = await bancoDeDados;

    return await db.insert('usuario', usuario.toMap());
  }

// atualizar o usuario
  Future<int> atualizarUsuario(Usuario usuario) async{
    final db = await bancoDeDados;
    return await db.update("usuario",
                            usuario.toMap(),
                            where: "id = ?",
                            whereArgs: [usuario.id]);
  }
//Excluir o usuario
Future<int> deletarUsuario(Usuario usuario) async{
  final db = await bancoDeDados; 
  return db.delete("usuario",
                    where:"id =?", 
                    whereArgs: [usuario.id]
                    );
}

//Buscar dados do usuario atraves do ID

Future<Usuario?> obterUsuario(int id) async{
 final db = await bancoDeDados;
final List<Map<String, dynamic>> mapa = await db.query("usuario",
                                                     where:"id = ?",
                                                      whereArgs: [id]
                                                      );

  if(mapa.isNotEmpty ){
    return Usuario.fromMap(mapa.first);
  }
} 

Future< List<Usuario>> obterUsuarios() async{
  final db = await bancoDeDados;
  final List<Map<String, dynamic>> mapa = await db.query("usuario");

  return List.generate(mapa.length, (i){
    return Usuario.fromMap(mapa[i]);
  });
}
}