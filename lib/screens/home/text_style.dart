import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTextStyles {
  static final TextStyle anuncio = GoogleFonts.notoSans(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle oferta = GoogleFonts.notoSans(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle descricao = GoogleFonts.notoSans(
    color: Colors.black,
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
  static final TextStyle preco = GoogleFonts.notoSans(
    color: Colors.blue[400],
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle parcela = GoogleFonts.notoSans(
    color: Colors.blue[400],
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
}
