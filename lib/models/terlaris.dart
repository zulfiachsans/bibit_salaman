// ignore_for_file: public_member_api_docs, sort_constructors_first
class Terlaris {
  String? imageUrl;
  String? title;
  String? stok;
  String? price;
  String? description;
  String? label;
  bool? isPopular;
  Terlaris({
    this.imageUrl,
    this.title,
    this.stok,
    this.price,
    this.description,
    this.label,
    this.isPopular = false,
  });
}

final List<Terlaris> allData = [
  Terlaris(
    title: 'Bibit Durian',
    imageUrl: 'assets/durian.png',
    stok: '60',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Mangga',
    imageUrl: 'assets/mangga.png',
    stok: '100',
    price: 'Rp. 20.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Alpukat',
    imageUrl: 'assets/alpukat.png',
    stok: '120',
    price: 'Rp. 4.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit anggur',
    imageUrl: 'assets/anggur.png',
    stok: '200',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Kelengkeng',
    imageUrl: 'assets/kelengkeng.png',
    stok: '150',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Rambutan',
    imageUrl: 'assets/rambutan.png',
    stok: '300',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl. Sed euismod, diam sit amet aliquet ultricies, nisl nunc aliquam nunc, vitae aliquam nunc nunc eget nisl.',
    label: 'Buah-buahan',
    isPopular: true,
  ),
];
