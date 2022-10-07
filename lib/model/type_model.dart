import 'package:vascomm_app/source/image_assets.dart';

class TypeModel {
  int? id;
  String? title;
  String? range;
  String? price;
  String? location;
  String? addrress;
  String? image;

  TypeModel(
    this.id,
    this.title,
    this.range,
    this.price,
    this.location,
    this.addrress,
    this.image,
  );
}

List<TypeModel> listType = [
  TypeModel(
    0,
    "PCR Swab Test (Drive Thru)",
    "Hasil 1 Hari Kerja",
    "Rp. 1.400.000",
    "Lenmarc Surabaya",
    "Dukuh Pakis, Surabaya",
    ImageAssets.comp1,
  ),
  TypeModel(
    1,
    "PCR Swab Test (Drive Thru)",
    "Hasil 1 Hari Kerja",
    "Rp. 1.400.000",
    "Lenmarc Surabaya",
    "Dukuh Pakis, Surabaya",
    ImageAssets.comp2,
  ),
];
