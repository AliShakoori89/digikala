class MiddleStore {
  final String image, title, price, ersalsarisupermarketi,
      imageersalsupermarketi, meghdardarsadtakhfif,
      mablaghtakhfif;

  final bool darsadtakhfif, ersalsari;
  final int id;

  MiddleStore({
    this.mablaghtakhfif,
    this.meghdardarsadtakhfif,
    this.ersalsarisupermarketi,
    this.imageersalsupermarketi,
    this.ersalsari,
    this.image,
    this.title,
    this.price,
    this.darsadtakhfif,
    this.id,});
}

String price1 = "200000";
String price2 = "40000";
String price3 = "15000";
String price4 = "14500";
String price5 = "65000";
String price6 = "98000";
String price7 = "12000";
String price8 = "11200";

String takhfif1 = '230,000';


List<MiddleStore> middlestores = [
  MiddleStore(
    id: 1,
    title: 'برنج دم سیاه طارم',
    price: price1,
    image: "Assets/images/berenj_dom_siyah.jpg",
    mablaghtakhfif: takhfif1,
    ersalsari: false,
    darsadtakhfif: true,
    meghdardarsadtakhfif: '22%'
  ),
  MiddleStore(
    id: 2,
    title: 'تخم مرغ',
    price: price2,
    image: "Assets/images/tokhm_morgh.jpg",
    imageersalsupermarketi: 'Assets/images/ersal_sari.png',
    ersalsarisupermarketi: 'ارسال سریع سوپرمارکتی',
    ersalsari: true,
    darsadtakhfif: false,
  ),
  MiddleStore(
    id: 3,
    title: 'خمیر هراز',
    price: price3,
    image: "Assets/images/khamir_haraz.jpg",
    ersalsari: false,
    darsadtakhfif: false,
  ),
  MiddleStore(
    id: 4,
    title: 'دستمال',
    price: price4,
    image: "Assets/images/dastmal.jpg",
    imageersalsupermarketi: 'Assets/images/ersal_sari.png',
    ersalsarisupermarketi: 'ارسال سریع سوپرمارکتی',
    darsadtakhfif: false,
    ersalsari: false
  ),
  MiddleStore(
    id: 5,
    title: 'دستمال کاغذی سرو',
    price: price5,
    image: "Assets/images/dastmal_kaghazi_sarv.jpg",
    darsadtakhfif: false,
    ersalsari: false
  ),
  MiddleStore(
    id: 6,
    title: 'زعفران اعلاء',
    price: price6,
    image: "Assets/images/zaafaran.jpg",
    darsadtakhfif: false,
    ersalsari: false
  ),
  MiddleStore(
    id: 7,
    title: 'شیشه شور',
    price: price7,
    image: "Assets/images/shishe_shur.jpg",
    imageersalsupermarketi: 'Assets/images/ersal_sari.png',
    ersalsarisupermarketi: 'ارسال سریع سوپرمارکتی',
    darsadtakhfif: false,
    ersalsari: true
  ),
  MiddleStore(
    id: 8,
    title: 'ماست قفقازی',
    price: price8,
    image: "Assets/images/mast_ghafghazi.jpg",
    darsadtakhfif: false,
    ersalsari: false
  )
];