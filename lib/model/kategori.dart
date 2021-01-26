part of 'model.dart';

class Kategori implements Model {
  @override
  String id;

  String nama;
  int harga;
  String tanggal;
  String jenis;
  String deskripsi;
  String kategori;
  String tag;
  String pengajar;
  String nomorKon;

  String gambar;
  String gamthum;

  Kategori({
    this.id, 
    this.nama, 
    this.harga,
    this.tanggal,
    this.jenis,
    this.deskripsi,
    this.kategori,
    this.nomorKon,
    this.pengajar,
    this.tag,
    this.gambar,
    this.gamthum
  });
  
  factory Kategori.fromJson(Map json) => Kategori(
    id: json['ID'] as String,
    nama: json['NAMA'] as String, 
    harga: json['HARGA'] != '' ? int.parse(json['HARGA'] as String) : 0,
    tanggal: json['TANGGAL'] as String, 
    jenis: json['JENIS'] as String, 
    deskripsi: json['DESKRIPSI'] as String, 
    kategori: json['KATEGORI'] as String, 
    nomorKon: json['NO KONSULTASI'] as String, 
    pengajar: json['PENGAJAR'] as String, 
    tag: json['TAG'] as String,
    gambar: json['GAMBAR'] as String,
    gamthum: json['GAMTHUM'] as String,
  );
}