class Dosen {
  final String nama;
  final String email;
  final String nid;

  const Dosen({
    required this.nama,
    required this.email,
    required this.nid,
  });

  factory Dosen.fromJson(Map<String, dynamic> json) {
    return Dosen(
      nama: json['nama'],
      email: json['email'],
      nid: json['nid'],
    );
  }
}