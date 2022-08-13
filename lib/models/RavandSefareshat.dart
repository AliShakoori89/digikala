class RavandSefareshat {
  final String image, title;
  final int id;

  RavandSefareshat({this.image, this.title, this.id});
}

List<RavandSefareshat> orders = [
  RavandSefareshat(
    id: 1,
    image: "Assets/images5/dar_entezar_pardakht.png",
    title: 'در انتظار پرداخت'
  ),
  RavandSefareshat(
    id: 2,
    image: "Assets/images5/dar_hal_pardazesh.png",
    title: 'در حال پردازش'
  ),
  RavandSefareshat(
    id: 3,
    image: "Assets/images5/tahvil_shode.png",
    title: 'تحویل شده'
  ),
  RavandSefareshat(
    id: 4,
    image: "Assets/images5/laghv_shode.jpg",
    title: 'لغو شده'
  ),
  RavandSefareshat(
    id: 5,
    image: "Assets/images5/marju_shode.jpg",
    title: 'مرجوع شد'
  ),

];