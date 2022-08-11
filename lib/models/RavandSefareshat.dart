class RavandSefareshat {
  final String image, title;
  final int id;

  RavandSefareshat({this.image, this.title, this.id});
}

List<RavandSefareshat> orders = [
  RavandSefareshat(
    id: 1,
    image: "Assets/images5/در انتظار پرداخت.png",
    title: 'در انتظار پرداخت'
  ),
  RavandSefareshat(
    id: 2,
    image: "Assets/images5/در حال پردازش.png",
    title: 'در حال پردازش'
  ),
  RavandSefareshat(
    id: 3,
    image: "Assets/images5/تحویل شده.png",
    title: 'تحویل شده'
  ),
  RavandSefareshat(
    id: 4,
    image: "Assets/images5/لغو شده.jpg",
    title: 'لغو شده'
  ),
  RavandSefareshat(
    id: 5,
    image: "Assets/images5/مرجوع شده.jpg",
    title: 'مرجوع شد'
  ),

];