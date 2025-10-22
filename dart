class Perfume {
  final String nome;
  final String descricao;
  final String imagem;
  final double preco;

  Perfume(this.nome, this.descricao, this.imagem, this.preco);
}

final List<Perfume> perfumes = [
  Perfume("Perfume Clássico", "Fragrância tradicional, ideal para o dia a dia.", "https://via.placeholder.com/200x120?text=Perfumes+1", 149.90),
  Perfume("Perfume Aromático", "Cheiroso e aromático, perfeito para dia a dia.", "https://via.placeholder.com/200x120?text=Perfumes+2", 199.90),
  Perfume("Perfume Suave", "Perfumes com novidades nas fragrâncias.", "https://via.placeholder.com/200x120?text=Perfume+3", 179.90),
];

Widget buildPerfumesSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: perfumes.map((p) => Card(
      color: Colors.grey[850],
      child: ListTile(
        leading: Image.network(p.imagem),
        title: Text(p.nome, style: TextStyle(color: Colors.white)),
        subtitle: Text(p.descricao, style: TextStyle(color: Colors.white70)),
        trailing: Text('R\$ ${p.preco.toStringAsFixed(2)}', style: TextStyle(color: Colors.greenAccent)),
      ),
    )).toList(),
  );
}
