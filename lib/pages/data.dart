class Donor {
 String name;
  final String blood;
  final String state;
  final String phone;
  final String des;

  Donor({
    required this.name,
    required this.blood,
    required this.state,
    required this.phone,
    required this.des,
  });
}

final List<Donor> donors = [
  Donor(
    name: "hello",
    blood: "O+",
    state: "jharkhand",
    phone: "663132132",
    des: "hi, i live in this place are i am this person ",
  ),
];
