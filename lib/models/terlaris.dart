// ignore_for_file: public_member_api_docs, sort_constructors_first
class Terlaris {
  String? imageUrl;
  String? title;
  String? stok;
  String? price;
  String? description;
  String? label;
  String? varietas;
  String? weight;
  bool? isPopular;
  Terlaris({
    this.imageUrl,
    this.title,
    this.stok,
    this.price,
    this.description,
    this.label,
    this.varietas,
    this.weight,
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
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Durian Montong',
    weight: '1 Kg',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Mangga',
    imageUrl: 'assets/mangga.png',
    stok: '100',
    price: 'Rp. 20.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Mangga Harum Manis',
    weight: '1 Kg',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Alpukat',
    imageUrl: 'assets/alpukat.png',
    stok: '120',
    price: 'Rp. 4.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Alpukat Mentega',
    weight: '1 Kg',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit anggur',
    imageUrl: 'assets/anggur.png',
    stok: '200',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Anggur Hitam',
    weight: '0.5 Kg',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Kelengkeng',
    imageUrl: 'assets/kelengkeng.png',
    stok: '150',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Kelengkeng Hitam',
    weight: '0.5 Kg',
    isPopular: true,
  ),
  Terlaris(
    title: 'Bibit Rambutan',
    imageUrl: 'assets/rambutan.png',
    stok: '300',
    price: 'Rp. 50.000',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet volutpat sapien. Nullam malesuada, risus non sodales dignissim, enim magna sodales libero, vel varius eros lorem non ipsum. Quisque tempus, libero id blandit dignissim, odio sapien porttitor felis, in eleifend massa ligula eget urna. Pellentesque ac dui sit amet lectus feugiat feugiat. Curabitur consequat diam sit amet lectus hendrerit, ac dictum augue suscipit. Integer vulputate tincidunt lorem, nec iaculis tortor rhoncus vel. Phasellus sed libero a neque vestibulum sagittis. Integer sollicitudin dolor vel sem condimentum, vitae pharetra sem viverra. \n Suspendisse potenti. In rhoncus lacinia ipsum. Curabitur vehicula risus ac sollicitudin facilisis. Ut ac tellus vel magna posuere egestas in in urna. Vestibulum scelerisque libero eget elit eleifend, at scelerisque arcu lacinia. Nunc non justo in nisl gravida vestibulum. Phasellus a fermentum metus. Proin tristique urna non nulla sodales, at consectetur urna malesuada. Ut viverra, metus vitae sodales tincidunt, purus lorem dignissim purus, sit amet facilisis metus eros eget est. Aenean sit amet lectus dapibus, vestibulum nisi vitae, tincidunt nulla. Integer tristique augue felis, sed rhoncus mauris aliquam ac.',
    label: 'Buah-buahan',
    varietas: 'Rambutan Binjai',
    weight: '0.5 Kg',
    isPopular: true,
  ),
];
