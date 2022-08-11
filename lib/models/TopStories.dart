class TopStore {

  final String image, title, price, mablaghtakhfif,
      meghdardarsadtakhfif;
  final int id;
  final bool darsadtakhfif;

  TopStore({
    this.meghdardarsadtakhfif,
    this.darsadtakhfif,
    this.mablaghtakhfif,
    this.image,
    this.title,
    this.price,
    this.id});
}

String price1 = "830000";
String price2 = "180000";
String price3 = "119000";
String price4 = "1100000";
String price5 = "313000";
String price6 = "269000";
String price7 = "23999000";
String price8 = "319000";
String price9 = "319000";
String price10 = "13500";

String takhfif1 = '1150000';
String takhfif2 = '300000';
String takhfif3 = '210000';
String takhfif4 = '1291000';
String takhfif5 = '359300';
String takhfif6 = '749000';
String takhfif7 = '27935500';
String takhfif8 = '470000';
String takhfif9 = '576000';
String takhfif10 = '216000';


List<TopStore> topstories = [
  TopStore(
      id: 1,
      title: 'سرویس پخت و پز 9 پارچه کاندید',
      price: price1,
      image: "Assets/images2/1.jpg",
      mablaghtakhfif: takhfif1,
      darsadtakhfif: true,
      meghdardarsadtakhfif: '28%'
  ),
  TopStore(
    id: 2,
    title: 'کاپشن دخترانه کیکی رایکی',
    price: price2,
    image: "Assets/images2/2.jpg",
    darsadtakhfif: true,
    mablaghtakhfif: takhfif2,
    meghdardarsadtakhfif: '44%'
  ),
  TopStore(
    id: 3,
    title: 'پتو کودک افرا',
    price: price3,
    image: "Assets/images2/3.jpg",
    darsadtakhfif: true,
    mablaghtakhfif: takhfif3,
    meghdardarsadtakhfif: '43%'
  ),
  TopStore(
      id: 4,
      title: 'گوشواره طلا 18 عیار زنانه میو گلد',
      price: price4,
      image: "Assets/images2/4.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif4,
      meghdardarsadtakhfif: '15%'
  ),
  TopStore(
      id: 5,
      title: 'کیک پز برقی لاوان',
      price: price5,
      image: "Assets/images2/5.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif5,
      meghdardarsadtakhfif: '13%'
  ),
  TopStore(
      id: 6,
      title: 'کوله پشتی 70 لیتری فوروارد',
      price: price6,
      image: "Assets/images2/6.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif6,
      meghdardarsadtakhfif: '64%'
  ),
  TopStore(
      id: 7,
      title: 'لپ تاپ 15 اینچی اچ پی',
      price: price7,
      image: "Assets/images2/7.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif7,
      meghdardarsadtakhfif: '14%'
  ),
  TopStore(
      id: 8,
      title: 'شارژر همراه موری مدل S2 ظرفیت 20000 میلی آمپر ساعت',
      price: price8,
      image: "Assets/images2/8.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif8,
      meghdardarsadtakhfif: '45%'
  ),
  TopStore(
      id: 9,
      title: 'ست سویشرت و شلوار ورزشی مردانه بی فور ران مدل 980218-99',
      price: price9,
      image: "Assets/images2/9.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif9,
      meghdardarsadtakhfif: '32%'
  ),
  TopStore(
      id: 10,
      title: 'ست سویشرت و شلوار پسرانه وچیون مدل 002B',
      price: price10,
      image: "Assets/images2/10.jpg",
      darsadtakhfif: true,
      mablaghtakhfif: takhfif10,
      meghdardarsadtakhfif: '38%'
  )
];