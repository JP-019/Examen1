class Libro {
  final int id;
  final int anio;
  final String titulo;
  final String identificador;
  final String editorial;
  final String isbn;
  final int paginas;
  final List<String> notas;
  final String creadoEn;
  final List<Map<String, String>> villanos;

  Libro({
    required this.id,
    required this.anio,
    required this.titulo,
    required this.identificador,
    required this.editorial,
    required this.isbn,
    required this.paginas,
    required this.notas,
    required this.creadoEn,
    required this.villanos,
  });

  // Método estático para crear una instancia de Libro desde JSON
  static Libro fromJson(Map<String, dynamic> json) {
    return Libro(
      id: json['id'],
      anio: json['anio'],
      titulo: json['titulo'],
      identificador: json['identificador'],
      editorial: json['editorial'],
      isbn: json['isbn'],
      paginas: json['paginas'],
      notas: List<String>.from(json['notas']),
      creadoEn: json['creadoEn'],
      villanos: List<Map<String, String>>.from(json['villanos']),
    );
  }
}
